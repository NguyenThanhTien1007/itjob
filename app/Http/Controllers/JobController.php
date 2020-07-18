<?php

namespace App\Http\Controllers;

use Hash;
use App\Benefit;
use App\BenefitJob;
use App\CareerInformation;
use App\CarrerObjective;
use App\CategoryJob;
use Carbon\Carbon;
use App\CV;
use App\JobAnnouncement;
use App\ShowGroupJob;
use App\MyJob;
use App\Education;
use App\Experience;
use App\Reference;
use App\Skill;
use App\Job;
use App\Company;
use App\ShowMyJob;
use App\NewJob;
use App\Address;
use App\TopCompany;
use App\NumberJob;
use App\JobGroup;
use App\JobRegion;
use App\Language;
use App\LanguageJob;
use App\National;
use App\PostJob;
use App\Provinces;
use App\TypeofjobJob;
use App\Template;
use App\Template_job;
use App\Upload;
use App\User;
use App\ShowRecruitment;
use App\Search_Job;
use App\Selected_cv;
use App\Skill_IT;
use App\Job_Skill;
use App\VietNam;
use App\viewCarreinfo;
use App\viewCV;
use App\ShowNotification;
use App\Email;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Collection;
use Illuminate\Queue\Jobs\Job as IlluminateJob;
use Psy\VersionUpdater\Checker;

use function GuzzleHttp\Promise\all;

class JobController extends Controller
{

    public function getIndex()
    {
        $array_color = ['#f44336!important', '#00ffff!important', '#00bcd4!important', '#3aa0d1', '#fcf8e3', '#d9edf7', '#ff9800!important', '#f2dede'];
        $list_color = array_rand($array_color, 1);
        $list_user = CV::join('users', 'users.id', '=', 'cv.user_id')->join('selected_cv', 'cv.user_id', '=', 'selected_cv.user_id')->join('careerobjective', 'cv.cv_id', '=', 'careerobjective.cv_id')->paginate(8);
        $number_job = NumberJob::paginate(12);
        $number_job_all = NumberJob::all();
        $top_company = TopCompany::all();
        $new_job = NewJob::where('show_off', '=', '0')->where('id_typeofjob', '=', '1')->paginate(2);
        $job_region = JobRegion::all();
        $job_address = Address::all();
        $job_skill = Skill_IT::all();
        $provinces = Provinces::all();
        $job_highlights = NewJob::where('salary_from', '>', 100)->where('salary_to', '<', 1000)->paginate(5);
        return view('index', compact('list_color', 'list_user', 'number_job_all', 'provinces', 'number_job', 'top_company', 'new_job', 'job_region', 'job_address', 'job_skill', 'job_highlights'));
    }


    public function getCV_List()
    {

        $skill = Skill_IT::all();
        $list_user = CV::join('users', 'users.id', '=', 'cv.user_id')->join('selected_cv', 'cv.user_id', '=', 'selected_cv.user_id')->join('careerobjective', 'cv.cv_id', '=', 'careerobjective.cv_id')->paginate(8);

        return view('cvlist', compact('list_user','skill'));
    }

    public function getNhatuyendungxemhoso()
    {

        return view('nhatuyendungxemhoso');
    }

    public function getChange_password($id)
    {
        $changepassword = User::where('id', $id)->firstOrFail();
        return view('changepassword_com', compact('changepassword'));
    }

    public function getUpdatejob()
    {

        return view('update-job');
    }


    public function getQuanlytimkiemhoso()
    {

        return view('quanlytimkiemhoso');
    }

    public function getThongtinlienhe()
    {

        return view('thongtinlienhe');
    }
    public function getConfirm()
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', Auth::user()->id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', Auth::user()->id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', Auth::user()->id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', Auth::user()->id)->get());

        return view('confirm', compact('countposting','','',''));
    }
    //     Đăng nhập
    public function postLogin(Request $req)
    {
        $this->validate(
            $req,
            [
                'username' => 'required|email',
                'password' => 'required'
            ],
            [
                'username.required' => 'Email là trường bắt buộc',
                'username.email' => 'Email không đúng định dạng',
                'password.required' => 'Mật khẩu là trường bắt buộc',
            ]
        );

        $credentials = array('username' => $req->username, 'password' => $req->password, 'isbanned' => '0');
        if (Auth::attempt($credentials, $req->has('remember'))) {
            if (Auth::user()->isemployer == 0) {
                return redirect()->route('index');
            }
            if (Auth::user()->isemployer == 1) {
                return redirect()->route('postjob');
            }
            //   return  redirect()->getUrlGenerator()->previous();
        } else return redirect()->route('index')->withInput()->with('message', 'Tên đăng nhập hoặc mật khẩu không chính xác.');
    }

    // Đăng Xuất
    public function getLogout()
    {
        Auth::logout();
        return redirect()->route('index');
    }

    // Đăng ký
    public function postRegister(Request $req)
    {
        $this->validate($req, [
            'hoten' => 'required|min:10|max:50',
            'username' => 'required|email|unique:users,username',
            'password' => 'required|min:8',
            'repassword' => 'required|same:password',

        ], [
            'hoten.min' => 'Họ tên ít nhất 10 ký tự',
            'required' => 'Nhập tất cả các ô',
            'username.email' => 'Định dạng email không hợp lệ',
            'username.unique' => 'Email đã tồn tại trên hệ thống',
            'password.min' => 'Mật khẩu ít nhất 8 ký tự',
            'repassword.same' => 'Mật khẩu nhập lại không giống',

        ]);


        $user = new User();
        $strprovider = '';
        $user->username = $req->username;
        $user->name = $req->hoten;

        $user->password = bcrypt($req->password);
        $user->provider_id = $strprovider;
        $user->avatar = 'unknown-user.png';
        $user->isemployer = $req->candidate;
        $user->role = 0;

        $user->save();

        return redirect()->route('index')->with('message', 'Tạo tài khoản thành công!!');
    }
    // Đăng việc
    public function getPostJob()
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', Auth::user()->id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', Auth::user()->id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', Auth::user()->id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', Auth::user()->id)->get());
        $languages = Language::all();
        $categories = CategoryJob::all();
        $provinces = Provinces::all();
        $skill = Skill_IT::all();
        $job_skill = Job_Skill::all();
        $benefits = Benefit::all();


        return view('postjob', compact('benefits', 'skill', 'job_skill', 'languages', 'categories', 'provinces', 'countposting', 'countwaitpost', 'countpausepost', 'countexpiredpost'));
    }
    public function postPostJob(Request $req)
    {

        $this->validate($req, [

            //            'position' => 'required',
            ////      'detail' => null
            //            'job' => 'required',
            //      'salary_unit' => 'vnd'
            //      'salary_from' => null
            //      'salary_to' => null
            //      'showsalary' => '0'
            //      'chkemployee' => '1'
            //      'chkfreelancer' => '1'
            //      'chkparttime' => '1'
            //      'chkinternship' => '1'
            //      'skill' => 'required'
            //      'jobname' => 'required'
            //      'benefit' => '14'
            //      'gender' => '1'
            //      'age_from' => null
            //      'age_to' => null
            //      'experience' => '0'
            //      'level' => '0'
            //      'degree' => '0'
            //      'language' => '6'
        ], []);

        $postjob = new PostJob();
        $postjob->id_company = Auth::id();
        $postjob->position = $req->position;
        $postjob->detail = 'hi';
        $postjob->salary_unit = $req->salary_unit;
        $postjob->salary_from = $req->salary_from;
        $postjob->salary_to = $req->salary_to;
        $postjob->showsalary = $req->showsalary;
        $postjob->enddate = $req->enddate;
        $postjob->gender = $req->gender;
        $postjob->age_from = $req->age_from;
        $postjob->age_to = $req->age_to;
        $postjob->experience = $req->experience;
        $postjob->level = $req->level;
        $postjob->degree = $req->degree;
        $postjob->status = '1';
        $postjob->save();

        if (isset($req->catejob)) {
            foreach ($req->catejob as $cj) {
                $jobgroup = new JobGroup();
                $jobgroup->id_group = $cj;
                $jobgroup->id_job = $postjob->id;
                $jobgroup->save();
            }
        }

        if (isset($req->place)) {
            foreach ($req->place as $p) {
                $jobregion = new JobRegion();
                $jobregion->id_region = $p;
                $jobregion->id_job = $postjob->id;
                $jobregion->save();
            }
        }
        if (isset($req->skill)) {
            foreach ($req->skill as $s) {
                $jobskill = new Job_Skill();
                $jobskill->id_skill = $s;
                $jobskill->id_job = $postjob->id;
                $jobskill->save();
            }
        }
        if (isset($req->typeofjob)) {
            foreach ($req->typeofjob as $t) {
                $typeofjob = new TypeofjobJob();
                $typeofjob->id_typeofjob = $t;
                $typeofjob->id_job = $postjob->id;
                $typeofjob->save();
            }
        }

        if (isset($req->benefit)) {
            foreach ($req->benefit as $b) {
                $benefitjob = new BenefitJob();
                $benefitjob->id_benefit = $b;
                $benefitjob->id_job = $postjob->id;
                $benefitjob->save();
            }
        }

        if (isset($req->language)) {
            foreach ($req->language as $l) {
                $languagejob = new LanguageJob();
                $languagejob->id_language = $l;
                $languagejob->id_job = $postjob->id;
                $languagejob->save();
            }
        }

        return redirect()->route('confirm', $postjob->id)->with('message', 'Đã thêm dữ liệu');
    }
    public function getConfirmPostJob($idjob)
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', Auth::user()->id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', Auth::user()->id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', Auth::user()->id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', Auth::user()->id)->get());
        
        $postjob = PostJob::where('id', $idjob)->firstOrFail();
        return view('confirm', compact('postjob','countposting','countwaitpost','countpausepost','countexpiredpost'));
    }
    public function postConfirmPostJob(Request $req)
    {

        $this->validate($req, ['idjob' => 'required'], ['idrequired' => 'Lỗi dữ liệu']);
        PostJob::where('id', $req->idjob)->update(['status' => '0']);
        return redirect()->route('postjob')->with('message', 'Đã thêm dữ liệu');
    }
    public function getSave(Request $req)
    {
        $this->validate($req, ['idjob' => 'required'], ['idrequired' => 'Lỗi dữ liệu']);

        PostJob::where('id', $req->idjob)->update(['status' => '1']);
        return redirect()->route('postjob')->with('message', 'Đã thêm dữ liệu');
    }
    public function postDel(Request $req)
    {
        PostJob::where('id',  $req->idjob)->delete();
        JobGroup::where('id_job',  $req->idjob)->delete();
        JobRegion::where('id_job', $req->idjob)->delete();
        Job_Skill::where('id_job',  $req->idjob)->delete();
        TypeofjobJob::where('id_job',  $req->idjob)->delete();
        BenefitJob::where('id_job', $req->idjob)->delete();
        LanguageJob::where('id_job',  $req->idjob)->delete();
        return redirect()->route('postjob')->with('message', 'Đã thêm dữ liệu');
    }
    public function getVieclamdangdang($id)
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', $id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', $id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', $id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', $id)->get());

        $countjobposting = PostJob::where('id_company', $id)->where('status', '0')->paginate(5);
        return view('vieclamdangdang', compact('countjobposting', 'countposting', 'countwaitpost', 'countpausepost', 'countexpiredpost'));
    }
    public function getVieclamchodang($id)
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', $id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', $id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', $id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', $id)->get());
        $countjob_waitpost = PostJob::where('id_company', $id)->where('status', '1')->paginate(5);

        return view('vieclamchodang', compact('countjob_waitpost', 'countposting', 'countwaitpost', 'countpausepost', 'countexpiredpost', 'provinces', 'categories'));
    }
    public function getVieclamtamdung($id)
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', $id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', $id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', $id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', $id)->get());
        $countjob_pausepost = PostJob::where('id_company', $id)->where('status', '2')->paginate(5);
        return view('vieclamtamdung', compact('countjob_pausepost', 'countposting', 'countwaitpost', 'countpausepost', 'countexpiredpost'));
    }
    public function getCompany_info()
    {
        return view('company_info');
    }
    public function getVieclamhethan($id)
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', $id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', $id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', $id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', $id)->get());

        $countjob_expiredpost = PostJob::where('id_company', $id)->where('status', '3')->paginate(5);
        return view('vieclamhethan', compact('countjob_expiredpost', 'countposting', 'countwaitpost', 'countpausepost', 'countexpiredpost'));
    }

    public function getEditPostJob($id)
    {
        $countposting = count(PostJob::where('status', '0')->where('id_company', Auth::user()->id)->get());
        $countwaitpost = count(PostJob::where('status', '1')->where('id_company', Auth::user()->id)->get());
        $countpausepost = count(PostJob::where('status', '2')->where('id_company', Auth::user()->id)->get());
        $countexpiredpost = count(PostJob::where('status', '3')->where('id_company', Auth::user()->id)->get());

        $categories = CategoryJob::all();
        $provinces = Provinces::all();
        $benefits = Benefit::all();
        $languages = Language::all();
        $skill = Skill_IT::all();
        $job_skill = Job_Skill::all();
        $job = PostJob::where('id', $id)->firstOrFail();

        return view('editjob', compact('skill', 'job_skill', 'categories', 'provinces', 'countposting', 'countwaitpost', 'countpausepost', 'countexpiredpost', 'job', 'benefits', 'languages'));
    }
    public function postEditPostJob(Request $req, $id)
    {

        $this->validate($req, [], []);


        PostJob::where('id', $id)->delete();
        JobGroup::where('id_job', $id)->delete();
        JobRegion::where('id_job', $id)->delete();
        Job_Skill::where('id_job', $id)->delete();
        TypeofjobJob::where('id_job', $id)->delete();
        BenefitJob::where('id_job', $id)->delete();
        LanguageJob::where('id_job', $id)->delete();

        $postjob = new PostJob();
        $postjob->id_company = Auth::id();
        $postjob->position = $req->position;
        $postjob->detail = 'hi';
        $postjob->salary_unit = $req->salary_unit;
        $postjob->salary_from = $req->salary_from;
        $postjob->salary_to = $req->salary_to;
        $postjob->showsalary = $req->showsalary;
        $postjob->enddate = $req->enddate;
        $postjob->gender = $req->gender;
        $postjob->age_from = $req->age_from;
        $postjob->age_to = $req->age_to;
        $postjob->experience = $req->experience;
        $postjob->level = $req->level;
        $postjob->degree = $req->degree;
        $postjob->status = '1';
        $postjob->save();

        if (isset($req->catejob)) {
            foreach ($req->catejob as $cj) {
                $jobgroup = new JobGroup();
                $jobgroup->id_group = $cj;
                $jobgroup->id_job = $postjob->id;
                $jobgroup->save();
            }
        }

        if (isset($req->place)) {
            foreach ($req->place as $p) {
                $jobregion = new JobRegion();
                $jobregion->id_region = $p;
                $jobregion->id_job = $postjob->id;
                $jobregion->save();
            }
        }
        if (isset($req->skill)) {
            foreach ($req->skill as $s) {
                $jobskill = new Job_Skill();
                $jobskill->id_skill = $s;
                $jobskill->id_job = $postjob->id;
                $jobskill->save();
            }
        }
        if (isset($req->typeofjob)) {
            foreach ($req->typeofjob as $t) {
                $typeofjob = new TypeofjobJob();
                $typeofjob->id_typeofjob = $t;
                $typeofjob->id_job = $postjob->id;
                $typeofjob->save();
            }
        }

        if (isset($req->benefit)) {
            foreach ($req->benefit as $b) {
                $benefitjob = new BenefitJob();
                $benefitjob->id_benefit = $b;
                $benefitjob->id_job = $postjob->id;
                $benefitjob->save();
            }
        }

        if (isset($req->language)) {
            foreach ($req->language as $l) {
                $languagejob = new LanguageJob();
                $languagejob->id_language = $l;
                $languagejob->id_job = $postjob->id;
                $languagejob->save();
            }
        }

        return redirect()->route('confirm', $postjob->id)->with('message', 'Đã thêm dữ liệu');
    }
    // hồ sơ
    public function getProfile($id)
    {
        $user = User::where('id', $id)->firstOrFail();
        $cv = CV::where('user_id', $id)->get();
        $careerobj = CarrerObjective::where('cv_id', 'abc')->get();
        $experiences = Experience::where('cv_id', 'abc')->get();
        $careerinfo = CareerInformation::where('cv_id', 'abc')->get();
        $educations = Education::where('cv_id', 'abc')->get();
        $references = Reference::where('cv_id', 'abc')->get();
        $skills = Skill::where('cv_id', 'abc')->get();
        if (sizeof($cv) > 0) {
            $cv = CV::where('user_id', $id)->join('vietnam', 'vietnam.region_id', 'cv.id_location')->first();
            $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->get();
            $careerinfo = CareerInformation::where('cv_id', $cv->cv_id)->get();
            $experiences = Experience::where('cv_id', $cv->cv_id)->get();
            $educations = Education::where('cv_id', $cv->cv_id)->get();
            $references = Reference::where('cv_id', $cv->cv_id)->get();
            $skills = Skill::where('cv_id', $cv->cv_id)->get();
            if (sizeof($careerinfo) > 0)
                $careerinfo = CareerInformation::where('cv_id', $cv->cv_id)->join('vietnam', 'vietnam.region_id', 'careerinformation.location_id')->first();
            if (sizeof($careerobj) > 0)
                $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->first();
        }
        $vns = VietNam::all();
        $nationals = National::all();
        return view('profile', compact('user', 'cv', 'careerobj', 'vns', 'experiences', 'nationals', 'careerinfo', 'educations', 'references', 'skills'));
    }

    public function postInfor(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtPhone' => 'required|regex:/(0)[0-9]{9}/',
            'txtEmail' => 'email|max:100',
            'slcity' => 'required',
            'txtAddress' => 'required|max:100',
            'slnationality' => 'required',
            'txtBirthday' => 'nullable|date|max:20'
        ], [
            'txtPhone.required' => 'Vui lòng nhập số điện thoại',
            'txtPhone.regex' => 'Số điện thoại sai định dạng',
            'txtEmail.email' => 'Email không đúng định dạng',
            'txtEmail.max' => 'Email tối đa 100 ký tự',
            'slcity.required' => 'Vui lòng chọn Tỉnh/Thành phố',
            'txtAddress.required' => 'Vui lòng nhập địa chỉ',
            'txtAddress.max' => 'Địa chỉ tối đa 100 ký tự',
            'slnationality.required' => 'Vui lòng chọn quốc tịch',
            'txtBirthday.date' => 'Sai định dạng ngày tháng',
            'txtBirthday.max' => 'Ngày sinh tối đa 20 ký tự',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postInforerror')->withInput();
        }

        $userid = $req->userid;
        $fullname = $req->txtFullname;
        $gender = $req->gender;
        $birthday = $req->txtBirthday;
        $address = $req->txtAddress;
        $phone = $req->txtPhone;
        $id_nationality = $req->slnationality;
        $id_location = $req->slcity;
        $id_nationality = $req->slnationality;
        $maritalstatus = $req->slMarritial;
        $email = $req->txtEmail;
        $str = [
            'user_id' => $userid, 'full_name' => $fullname, 'gender' => $gender, 'birthday' => $birthday, 'address' => $address, 'phone' => $phone,
            'id_nationality' => $id_nationality, 'id_location' => $id_location, 'maritalstatus' => $maritalstatus, 'email' => $email, 'id_nationality' => $id_nationality
        ];
        CV::updateOrInsert(['user_id' => $userid], $str);
        return redirect()->back();
    }

    public function postCareerObj(Request $req)
    {
        $this->validate($req, [
            'objective_job' => 'required|max:2000',
        ], [
            'objective_required' => 'Vui lòng nhập mục tiêu',
            'objective_max' => 'Tối đa 2000 ký tự',
        ]);
        $cv_id = $req->cv_id;
        $content = $req->objective_job;
        $str = [
            'cv_id' => $cv_id, 'content' => $content
        ];
        CarrerObjective::updateOrInsert(['cv_id' => $cv_id], $str);
        return redirect()->back();
    }

    public function postExperience(Request $req)
    {
        $this->validate($req, [
            'txtTitleExp' => 'required|max:255',
            'txtCompany' => 'required|max:500',
            'start_day' => 'required',
            'rexp_workdesc' => 'required|max:500',
        ], [
            'txtTitleExp.required' => 'Vui lòng nhập vị trí',
            'txtTitleExp.max' => 'Vị trí tối đa 255 ký tự',
            'txtCompany.required' => 'Vui lòng nhập tên công ty',
            'txtCompany.max' => 'Tên công ty tối đa 500 ký tự',
            'start_day.required' => 'Vui lòng nhập thời gian bắt đầu làm việc',
            'rexp_workdesc.required' => 'Vui lòng nhập mô tả',
            'rexp_workdesc.max' => 'Mô tả tối đa 500 ký tự',
        ]);
        $cv_id = $req->cv_id;
        $title = $req->txtTitleExp;
        $company = $req->txtCompany;
        $start_day = $req->start_day;
        $end_day = 'Hiện tại';
        if ($req->end_day != null)
            $end_day = $req->end_day;
        $content = $req->rexp_workdesc;
        $str = [
            'cv_id' => $cv_id, 'content' => $content, 'company' => $company, 'title' => $title, 'start_day' => $start_day, 'end_day' => $end_day
        ];
        Experience::Insert($str);
        return redirect()->back();
    }

    public function postExperienceUpdate(Request $req)
    {
        $this->validate($req, [
            'txtTitleExp' => 'required|max:255',
            'txtCompany' => 'required|max:500',
            'start_day' => 'required',
            'rexp_workdesc' => 'required|max:500',
        ], [
            'txtTitleExp.required' => 'Vui lòng nhập vị trí',
            'txtTitleExp.max' => 'Vị trí tối đa 255 ký tự',
            'txtCompany.required' => 'Vui lòng nhập tên công ty',
            'txtCompany.max' => 'Tên công ty tối đa 500 ký tự',
            'start_day.required' => 'Vui lòng nhập thời gian bắt đầu làm việc',
            'rexp_workdesc.required' => 'Vui lòng nhập mô tả',
            'rexp_workdesc.max' => 'Mô tả tối đa 500 ký tự',
        ]);
        $id = $req->cv_id;
        $title = $req->txtTitleExp;
        $company = $req->txtCompany;
        $start_day = $req->start_day;
        $end_day = 'Hiện tại';
        if ($req->end_day != null)
            $end_day = $req->end_day;
        $content = $req->rexp_workdesc;
        $str = [
            'content' => $content, 'company' => $company, 'title' => $title, 'start_day' => $start_day, 'end_day' => $end_day
        ];
        Experience::where('id', $id)->update($str);
        return redirect()->back();
    }

    public function postExperienceDelete(Request $req)
    {
        $id = $req->id;
        Experience::where('id', $id)->delete();
        return redirect()->back();
    }

    public function postCareerInfo(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txttitle' => 'required|max:255',
            'salary_from' => 'nullable|numeric|max:11',
            'salary_to' => 'nullable|numeric|max:11'
        ], [
            'txttitle.required' => 'Vui lòng tiêu đề hồ sơ',
            'txttitle.max' => 'Tiêu đề hồ sơ tối đa 255 ký tự',
            'salary_from.numeric' => 'Lương khởi điểm không đúng định dạng',
            'salary_from.max' => 'Lương khởi điểm tối đa 11 ký tự',
            'salary_to.numeric' => 'Lương tối đa không đúng định dạng',
            'salary_to.max' => 'Lương tối đa tối đa 11 ký tự',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postCareerInfoerror')->withInput();
        }
        $cv_id = $req->cv_id;
        $resumetitle = $req->txttitle;
        $salarykind = $req->salary_unit;
        if (!isset($req->salary_from) && !isset($req->salary_to)) {
            $salarykind = 'ltt';
            $salaryfrom = '0';
            $salaryto = '0';
        } else
            if (!isset($req->salary_from)) {
            $salaryfrom = '0';
            $salaryto = $req->salary_to;
        } else
                if (!isset($req->salary_to)) {
            $salaryfrom = $req->salary_from;
            $salaryto = '0';
        } else {
            $salaryfrom = $req->salary_from;
            $salaryto = $req->salary_to;
        }
        $location_id = $req->LOCATION_ID;
        $position_want = $req->level_id;
        $fulltime = '0';
        if ($req->has('chkResumeType_1'))
            $fulltime = $req->chkResumeType_1;
        $parttime = '0';
        if ($req->has('chkResumeType_3'))
            $parttime = $req->chkResumeType_3;
        $freelancer = '0';
        if ($req->has('chkResumeType_2'))
            $freelancer = $req->chkResumeType_2;
        $internship = '0';
        if ($req->has('chkResumeType_4'))
            $internship = $req->chkResumeType_4;

        $str = [
            'cv_id' => $cv_id, 'resumetitle' => $resumetitle, 'salarykind' => $salarykind,
            'salaryfrom' => $salaryfrom, 'salaryto' => $salaryto, 'location_id' => $location_id,
            'position_want' => $position_want, 'fulltime' => $fulltime, 'parttime' => $parttime,
            'freelancer' => $freelancer, 'internship' => $internship
        ];
        CareerInformation::updateOrInsert(['cv_id' => $cv_id], $str);
        return redirect()->back();
    }

    public function postEducation(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtTitleExp' => 'required|max:255',
            'txtDesCourse' => 'max:1000',
            'redu_year' => 'nullable|max:11',
        ], [
            'txtTitleExp.required' => 'Vui lòng tên Trường/Khóa học',
            'txtTitleExp.max' => 'Trường/Khóa học tối đa 255 ký tự',
            'txtDesCourse.max' => 'Mô tả tối đa 1000 ký tự',
            'redu_year.max' => 'Năm tốt nghiệp tối đa 11 ký tự',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postEducationerror')->withInput();
        }
        $cv_id = $req->cv_id;
        $course = $req->txtTitleExp;
        $description = $req->txtDesCourse;
        $degree_id = '0';
        $date = '';
        if ($req->redu_year != null) {
            $date = $req->redu_year;
            $degree_id = $req->redu_degree;
        }
        $str = [
            'cv_id' => $cv_id, 'course' => $course, 'description' => $description, 'degree_id' => $degree_id, 'date' => $date
        ];
        Education::Insert($str);
        return redirect()->back();
    }

    public function postEducationUpdate(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtTitleExp' => 'required|max:255',
            'txtDesCourse' => 'max:1000',
            'redu_year' => 'nullable|max:11',
        ], [
            'txtTitleExp.required' => 'Vui lòng tên Trường/Khóa học',
            'txtTitleExp.max' => 'Trường/Khóa học tối đa 255 ký tự',
            'txtDesCourse.max' => 'Mô tả tối đa 1000 ký tự',
            'redu_year.max' => 'Năm tốt nghiệp tối đa 11 ký tự',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postEducationerror')->withInput();
        }
        $id = $req->cv_id;
        $course = $req->txtTitleExp;
        $description = $req->txtDesCourse;
        $degree_id = '0';
        $date = '';
        if ($req->redu_year != null) {
            $date = $req->redu_year;
            $degree_id = $req->redu_degree;
        }
        $str = [
            'course' => $course, 'description' => $description, 'degree_id' => $degree_id, 'date' => $date
        ];
        Education::where('id', $id)->update($str);
        return redirect()->back();
    }

    public function postEducationDelete(Request $req)
    {
        $id = $req->id;
        Education::where('id', $id)->delete();
        return redirect()->back();
    }

    public function postReference(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtNameRefer' => 'required|max:255',
            'txtPosition' => 'required|max:100',
            'txtCompany' => 'required|max:150',
            'txtPhone' => 'required|max:18|regex:/(0)[0-9]{9}/',
            'txtEmail' => 'required|max:50|email',
        ], [
            'txtNameRefer.required' => 'Vui lòng nhập tên người tham khảo',
            'txtNameRefer.max' => 'Tên người tham khảo tối đa 255 ký tự',
            'txtCompany.required' => 'Vui lòng nhập công ty',
            'txtCompany.max' => 'Công ty tối đa 150 ký tự',
            'txtPosition.required' => 'Vui lòng nhập chức vụ',
            'txtPosition.max' => 'Chức vụ tối đa 100 ký tự',
            'txtPhone.required' => 'Vui lòng nhập số điện thoại',
            'txtPhone.max' => 'Số điện thoại tối đa 18 ký tự',
            'txtPhone.regex' => 'Số điện thoại sai định dạng',
            'txtEmail.required' => 'Vui lòng nhập email',
            'txtEmail.max' => 'Email tối đa 50 ký tự',
            'txtEmail.email' => 'Email sai định dạng',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postReferenceerror')->withInput();
        }
        $cv_id = $req->cv_id;
        $name = $req->txtNameRefer;
        $position = $req->txtPosition;
        $company = $req->txtCompany;
        $phone = $req->txtPhone;
        $email = $req->txtEmail;
        $str = [
            'cv_id' => $cv_id, 'name' => $name, 'position' => $position, 'company' => $company, 'phone' => $phone, 'email' => $email
        ];
        Reference::Insert($str);
        return redirect()->back();
    }

    public function postReferenceUpdate(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtNameRefer' => 'required|max:255',
            'txtPosition' => 'required|max:100',
            'txtCompany' => 'required|max:150',
            'txtPhone' => 'required|max:18|regex:/(0)[0-9]{9}/',
            'txtEmail' => 'required|max:50|email',
        ], [
            'txtNameRefer.required' => 'Vui lòng nhập tên người tham khảo',
            'txtNameRefer.max' => 'Tên người tham khảo tối đa 255 ký tự',
            'txtCompany.required' => 'Vui lòng nhập công ty',
            'txtCompany.max' => 'Công ty tối đa 150 ký tự',
            'txtPosition.required' => 'Vui lòng nhập chức vụ',
            'txtPosition.max' => 'Chức vụ tối đa 100 ký tự',
            'txtPhone.required' => 'Vui lòng nhập số điện thoại',
            'txtPhone.max' => 'Số điện thoại tối đa 18 ký tự',
            'txtPhone.regex' => 'Số điện thoại sai định dạng',
            'txtEmail.required' => 'Vui lòng nhập email',
            'txtEmail.max' => 'Email tối đa 50 ký tự',
            'txtEmail.email' => 'Email sai định dạng',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postReferenceerror')->withInput();
        }
        $id = $req->cv_id;
        $name = $req->txtNameRefer;
        $position = $req->txtPosition;
        $company = $req->txtCompany;
        $phone = $req->txtPhone;
        $email = $req->txtEmail;
        $str = [
            'name' => $name, 'position' => $position, 'company' => $company, 'phone' => $phone, 'email' => $email
        ];
        Reference::where('id', $id)->update($str);
        return redirect()->back();
    }

    public function postReferenceDelete(Request $req)
    {
        $id = $req->id;
        Reference::where('id', $id)->delete();
        return redirect()->back();
    }

    public function postSkill(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtTitleSkill' => 'required|max:50',
            'txtSkillDes' => 'required|max:150',
        ], [
            'txtTitleSkill.required' => 'Vui lòng nhập kỹ năng',
            'txtTitleSkill.max' => 'Kỹ năng tối đa 50 ký tự',
            'txtSkillDes.required' => 'Vui lòng nhập mô tả',
            'txtSkillDes.max' => 'Mô tả tối đa 150 ký tự',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postSkillerror')->withInput();
        }
        $cv_id = $req->cv_id;
        $title = $req->txtTitleSkill;
        $level = $req->txtLevelSkill;
        $description = $req->txtSkillDes;
        $str = [
            'cv_id' => $cv_id, 'title' => $title, 'level' => $level, 'description' => $description
        ];
        Skill::Insert($str);
        return redirect()->back();
    }

    public function postSkillUpdate(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtTitleSkill' => 'required|max:50',
            'txtSkillDes' => 'required|max:150',
        ], [
            'txtTitleSkill.required' => 'Vui lòng nhập kỹ năng',
            'txtTitleSkill.max' => 'Kỹ năng tối đa 50 ký tự',
            'txtSkillDes.required' => 'Vui lòng nhập mô tả',
            'txtSkillDes.max' => 'Mô tả tối đa 150 ký tự',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator, 'postSkillerror')->withInput();
        }
        $id = $req->cv_id;
        $title = $req->txtTitleSkill;
        $level = $req->txtLevelSkill;
        $description = $req->txtSkillDes;
        $str = [
            'title' => $title, 'level' => $level, 'description' => $description
        ];
        Skill::where('id', $id)->update($str);
        return redirect()->back();
    }

    public function postSkillDelete(Request $req)
    {
        $id = $req->id;
        Skill::where('id', $id)->delete();
        return redirect()->back();
    }

    public function postUploadImage(Request $req)
    {
        $this->validate(
            $req,
            [
                'fileAvatar' => 'image|max:2048|mimes:jpeg,png,jpg,gif,svg'
            ],
            [
                'fileAvatar.max' => 'Kích thước hình quá lớn (tối đa 2MB).',
                'fileAvatar.mimes' => 'Định dạng hình ảnh không đúng, chỉ hỗ trợ png, jpg, jpeg, gif, svg.'
            ]
        );
        $cv_id = $req->cv_id;
        $cv = CV::where('cv_id', $cv_id)->first();
        if ($req->hasFile('fileAvatar')) {
            $upload = new Upload();
            $upload->removeDocument($cv->images, 'upload/avatars');
            $image = $upload->uploadFile($req, 'fileAvatar', 'upload/avatars');
            Image::make('upload/avatars/' . $image)->fit(300)->save('upload/avatars/' . $image);
            CV::where('cv_id', $cv_id)->update(['images' => $image]);
        }
        return redirect()->back();
    }



    public function getSubmittedJob()
    {

        return view('submittedjob');
    }
    public function getmau_CV($id)
    {
        $cv = CV::where('cv_id', $id)->get();

        return view('maucv', compact('cv'));
    }
    public function getViewCV($id)
    {
        $cv = CV::where('cv_id', $id)->get();

        if (sizeof($cv) > 0) {
            $cv = viewCV::where('cv_id', $id)->first();
            $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->get();
            $careerinfo = CareerInformation::where('cv_id', $cv->cv_id)->get();
            $experiences = Experience::where('cv_id', $cv->cv_id)->get();
            $educations = Education::where('cv_id', $cv->cv_id)->get();
            $references = Reference::where('cv_id', $cv->cv_id)->get();
            $skills = Skill::where('cv_id', $cv->cv_id)->get();
            if (sizeof($careerinfo) > 0)
                $careerinfo = viewCarreinfo::where('cv_id', $cv->cv_id)->first();
            if (sizeof($careerobj) > 0)
                $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->first();
        }

        return view('viewcv', compact('user', 'cv', 'careerobj', 'experiences', 'careerinfo', 'educations', 'references', 'skills'));
    }
    public function getViewCV1($id)
    {
        $cv = CV::where('cv_id', $id)->get();
        if (sizeof($cv) > 0) {
            $cv = CV::where('cv_id', $id)->join('vietnam', 'vietnam.region_id', 'cv.id_location')->join('national', 'national.nation_id', 'cv.id_nationality')->first();
            $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->get();
            $careerinfo = CareerInformation::where('cv_id', $cv->cv_id)->get();
            $experiences = Experience::where('cv_id', $cv->cv_id)->get();
            $educations = Education::where('cv_id', $cv->cv_id)->get();
            $references = Reference::where('cv_id', $cv->cv_id)->get();
            $skills = Skill::where('cv_id', $cv->cv_id)->get();
            if (sizeof($careerinfo) > 0)
                $careerinfo = CareerInformation::where('cv_id', $cv->cv_id)->join('vietnam', 'vietnam.region_id', 'careerinformation.location_id')->first();
            if (sizeof($careerobj) > 0)
                $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->first();
            $vns = VietNam::all();
            $nationals = National::all();
            return view('viewcv1', compact('cv', 'careerobj', 'vns', 'experiences', 'nationals', 'careerinfo', 'educations', 'references', 'skills'));
        } else
            return redirect()->route('index');
    }
    // KT Hồ Sơ
    // Quản lý hồ sơ
    public function getQuanlyhoso($id)
    {
        $countjobsave = count(MyJob::where('status', '0')->where('user_id', Auth::user()->id)->get());
        $countjobsubmit = count(MyJob::where('status', '1')->where('user_id', Auth::user()->id)->get());
        $template = Template::all();

        $cv = CV::where('user_id', $id)->get();
        $template_job = Selected_cv::where('user_id', $id)->get();
        if (sizeof($template_job) > 0) {
            $template_job = Selected_cv::where('user_id', $id)->first();
        }
        if (sizeof($cv) > 0) {
            $cv = CV::where('user_id', $id)->join('vietnam', 'vietnam.region_id', 'cv.id_location')->first();
            $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->get();
            $careerinfo = CareerInformation::where('cv_id', $cv->cv_id)->get();
            $experiences = Experience::where('cv_id', $cv->cv_id)->get();
            $educations = Education::where('cv_id', $cv->cv_id)->get();
            $references = Reference::where('cv_id', $cv->cv_id)->get();
            $skills = Skill::where('cv_id', $cv->cv_id)->get();
            if (sizeof($careerinfo) > 0)
                $careerinfo = viewCarreinfo::where('cv_id', $cv->cv_id)->first();
            if (sizeof($careerobj) > 0)
                $careerobj = CarrerObjective::where('cv_id', $cv->cv_id)->first();
        }


        return view('quanlyhoso', compact('countjobsave','countjobsubmit','template_job', 'template', 'user', 'cv', 'careerobj', 'experiences', 'careerinfo', 'skills', 'educations', 'references'));
    }
    public function getEmployerProfile($id)
    {
        $company_employer = Company::where('user_id', $id)->get();
        if (sizeof($company_employer) > 0) {

            $company_employer = Company::where('user_id', $id)->join('vietnam', 'vietnam.region_id', 'company.address')->join('users', 'users.id', 'company.user_id')->first();
        }
        return view('employer_profile', compact('company_employer'));
    }
    public function getCompanyProfile($id)
    {
        $user = User::where('id', $id)->firstOrFail();
        $company_employer = Company::where('user_id', $id)->get();
        if (sizeof($company_employer) > 0) {

            $company_employer = Company::where('user_id', $id)->join('vietnam', 'vietnam.region_id', 'company.address')->join('users', 'users.id', 'company.user_id')->first();
        }
        return view('company_profile', compact('company_employer', 'user'));
    }
    public function postTemplate_CV(Request $req, $id)
    {

        $template = $req->template_cv;
        $cv = $req->cv_id;
        $str = [
            'id_template' => $template, 'cv_id' => $cv, 'user_id' => $id
        ];
        Template_job::updateOrInsert(['user_id' => $id], $str);

        return redirect()->route('quanlyhoso', Auth::user()->id)->with('Chọn mẫu CV thành công', '');
    }
    // KT Quản lý hồ sơ
    // Tiềm Kiếm
    public function getSearch(Request $req)
    {
        $job = $req->txtinputlg;
        $address = Address::all();
        $number_job = NumberJob::all();
        $post_search = Search_Job::where('position', 'like', '%' . $req->txtinputlg . '%')->get();
        $post_search = Search_Job::all();
        $skill_job = Skill_IT::all();
        return view('findjobs', compact('number_job', 'post_search', 'address', 'job', 'skill_job'));
    }
    public function postSearch(Request $req)
    {
        $number_job = NumberJob::all();
        $provinces = Provinces::all();
        $skill_job = Skill_IT::all();
        if (isset($req->place)) {
            $lstjob = null;
            $lst_idjob = null;
            foreach ($req->place as $p) {

                $lst_idjob = JobRegion::where("id_region", $p)->get();
                $lst_postjob = null;
                foreach ($lst_idjob as $idjob) {
                    $lst_job = NewJob::where("id", $idjob->id_job)->get();
                }
            }
            $lst = array();
            foreach ($lst_job as $job) {
                if (strcmp($req->txtinputlg, $job->position)) {
                    array_push($lst, $job);
                }
            }
            $job = $req->txtinputlg;
            $address = Address::all();

            return view('findjobs', compact('number_job', 'lst', 'job', 'address', 'provinces', 'skill_job'));
        } else {
            $job = $req->txtinputlg;
            $address = Address::all();
            $provinces = Provinces::all();
            $lst = NewJob::where('position', 'like', '%' . $job . '%')->get();
            return view('findjobs', compact('number_job', 'lst', 'job', 'address', 'provinces', 'skill_job'));
        }
    }
    public function post_Search(Request $req)
    {
        $number_job = NumberJob::all();
        $job = $req->txtinputlg;
        $address = Address::all();
        $provinces = Provinces::all();
        $skill_job = Skill_IT::all();
        $lst = NewJob::where('position', 'like', '%' . $job . '%')->get();


        return view('findjobs', compact('number_job', 'lst', 'job', 'address', 'provinces', 'skill_job'));
    }
    // Việc làm theo nhóm
    public function getVieclamittheonhom($jobID, Request $req)
    {
        $job = $req->txtinputlg;
        $address = Address::all();
        $number = count(ShowGroupJob::where('jobID', $jobID)->get());
        $job_group = ShowGroupJob::where('jobID', $jobID)->paginate(8);
        $number_job = NumberJob::all();
        $skill_job = Skill_IT::all();
        $provinces = Provinces::all();
        $lst = NewJob::where('position', 'like', '%' . $job . '%')->get();
        return view('vieclamittheonhom', compact('skill_job', 'lst', 'number_job', 'job', 'provinces', 'number', 'job_group', 'address'));
    }
    // việc làm của tôi
    public function getMyJob($id)
    {
        $myjob = ShowMyJob::where('user_id', $id)->where('trangthai', '=', 0)->get();

        return view('vieclamcuatoi', compact('myjob'));
    }
    // việc làm đã nộp
    public function getSubmitJob($id)
    {
        $myjob = ShowMyJob::where('user_id', $id)->where('trangthai', '=', 1)->get();

        return view('vieclamdanop', compact('myjob'));
    }
    // đổi mật khẩu
    public function getRepassword($id)
    {
        $changepassword = User::where('id', $id)->firstOrFail();
        return view('changepassword', compact('changepassword'));
    }
    public function postRepassword(Request $req, $id)
    {

        $this->validate($req, [
            'old_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required'

        ], [
            'old_password.required' => 'Vui lòng nhập mật khẩu hiện tại',
            'new_password.required' => 'Vui lòng nhập mật khẩu mới',
            'confirm_password.required' => 'Vui lòng nhập lại mật khẩu mới',
        ]);
        if (\Hash::check($req->old_password, Auth::user()->password)) {
            $user = User::where('id', Auth::user()->id)->firstOrFail();
            $user->password = Hash::make($req->new_password);
            $user->update();
            return redirect()->route('changepassword', Auth::user()->id)->with('message', 'Thay đổi mật khẩu thành công!!');
        } else
            return redirect()->route('changepassword', Auth::user()->id)->with('err', 'Mật khẩu cũ không chính xác.');
    }
    public function postChange_email(Request $req, $id)
    {

        $this->validate($req, [
            'new_email' => 'required'

        ], [
            'new_email.required' => 'Vui lòng nhập email',
        ]);
        $email = $req->new_email;
        $str = [
            'username' => $email
        ];
        User::updateOrInsert(['id' => $id], $str);



        return redirect()->route('changepassword', Auth::user()->id)->with('success', '');
    }
    // Thông tin việc làm
    public function getThongtincongviec($id)
    {
        $job_new = NewJob::where('id', $id)->get();
        $benefits = Benefit::all();
        return view('thongtincongviec', compact('job_new', 'benefits'));
    }



    public function postThongtincongviec(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'txtJob' => 'required',
            'txtUser' => 'required|',
        ], [
            'txtJob.required' => 'không tìm thấy id job',
            'txtUser.require' => 'Bạn chưa đăng nhập',

        ]);

        $job_id = $req->txtJob;
        $user_id = $req->txtUser;
        $date_time = Carbon::now('Asia/Ho_Chi_Minh');


        $str = [
            'job_id' => $job_id, 'user_id' => $user_id, 'datetime' => $date_time,
        ];
        MyJob::updateOrInsert(['id' => $job_id], $str);

        return redirect()->route('thongtincongviec', $job_id)->with('message', 'Đã thêm dữ liệu');
    }
    // Nộp hồ sơ
    public function postSubmitjob(Request $req)
    {
        $job_id= $req->txtjob_id;
        $status = '1';
        $str = [
            'status' =>  $status,
        ];
        MyJob::updateOrInsert(['job_id' => $job_id], $str);



        return redirect()->route('vieclamcuatoi', Auth::user()->id)->with('success', 'Nộp hồ sơ thành công');
    }
    // Thông tin công ty


    public function getThongtincongty($id)
    {
        $company_info = Company::where('user_id', $id)->first();
        return view('thongtincongty', compact('company_info'));
    }
    public function postThongtincongty(Request $req, $id)
    {

        $company_name = $req->company_name;
        $number = $req->number;
        $typeof = $req->typeof;
        $website = $req->website;
        $phone = $req->phone;
        $logo = $req->logo;
        $introduce = $req->introduce;
        $message = $req->message;
        if($logo == null)
        {
            $str = [
                'company_name' => $company_name, 'number_of_employees' => $number, ' company_type' => $typeof,
                'website' => $website, 'introduce' => $introduce, 'message' => $message, 'company_phone' => $phone,
            ];
        }
        else{
            $str = [
                'company_name' => $company_name, 'number_of_employees' => $number, ' company_type' => $typeof,
                'website' => $website, 'logo' => $logo, 'introduce' => $introduce, 'message' => $message, 'company_phone' => $phone,
            ];
        }
       
        Company::updateOrInsert(['user_id' => $id], $str);

        return redirect()->route('thongtincongty', $id)->with('message', 'Đã thêm dữ liệu');
    }
    // Lọc theo địa điểm
    public function postAddress(Request $req)
    {
        $number_job = NumberJob::all();
        $provinces = Provinces::all();
        $skill_job = Skill_IT::all();
        $lst_search = array();
        
        array_push($lst_search, $req->address);
        if ($req->show_off == 0) {
            $show_off = '1';
        } else {
            $show_off = '0';
        }


        if (isset($req->address)) {

            $lst_job = null;
            foreach ($req->address as $a) {

                $lst_job = NewJob::where('region_name', 'like', '%' . $a . '%')->get();
            }

            $lst = array();
            foreach ($lst_job as $job) {

                array_push($lst, $job);
               
            }
            $job = $req->txtinputlg;
           
            $address = Address::all();

            return view('findjobs', compact('number_job', 'lst' ,'lst_search', 'job', 'address', 'provinces', 'skill_job'));
        } else {
            $job = $req->txtinputlg;
            $address = Address::all();
            $provinces = Provinces::all();
            $lst = NewJob::where('position', 'like', '%' . $job . '%')->get();
            return view('findjobs', compact('number_job', 'lst', 'job', 'address', 'provinces', 'skill_job'));
        }
    }
    // Lọc theo kỹ năng
    public function postFindSkill(Request $req)
    {
        $number_job = NumberJob::all();
        $provinces = Provinces::all();
        $skill_job = Skill_IT::all();
        $lst_search = array();
        
        array_push($lst_search, $req->findskill);
        if ($req->show_off == 0) {
            $show_off = '1';
        } else {
            $show_off = '0';
        }


        if (isset($req->findskill)) {

            $lst_job = null;
            foreach ($req->findskill as $a) {

                $lst_job = NewJob::where('skill_name', 'like', '%' . $a . '%')->get();
            }

            $lst = array();
            foreach ($lst_job as $job) {

                array_push($lst, $job);
               
            }
        
            $job = $req->txtinputlg;
           
            $address = Address::all();

            return view('findjobs', compact('number_job', 'lst' ,'lst_search', 'job', 'address', 'provinces', 'skill_job'));
        } else {
            $job = $req->txtinputlg;
            $address = Address::all();
            $provinces = Provinces::all();
            $lst = NewJob::where('position', 'like', '%' . $job . '%')->get();
            return view('findjobs', compact('number_job', 'lst', 'job', 'address', 'provinces', 'skill_job'));
        }
    }
    // Ẩn hiện
    public function postShowOff(Request $req, $id)
    {

        if ($req->show_off == 0) {
            $show_off = '1';
        } else {
            $show_off = '0';
        }

        $str = [
            'show_off' => $show_off,
        ];
        PostJob::updateOrInsert(['id' => $id], $str);
        return redirect()->back();
    }
    // Email
    public function postEmail(Request $req)
    {
        $str = [
            'email_name' => $req->txtemail,
        ];
        Email::Insert( $str);
        return redirect()->back();
    }
    //  Quản lý CV
    public function getQuanlycv()
    {
        $list_cv = CV::join('users', 'users.id', '=', 'cv.user_id')->join('selected_cv', 'cv.user_id', '=', 'selected_cv.user_id')->join('careerobjective', 'cv.cv_id', '=', 'careerobjective.cv_id')->paginate(8);

        return view('ad_quanlycv', compact('list_cv'));
    }
    public function getQuanlyvieclam()
    {
        $list_job = PostJob::all();
        return view('ad_quanlyvieclam', compact('list_job'));
    }
    public function getQuanlytaikhoan()
    {
        $list_user = User::all();
        return view('ad_quanlytaikhoan', compact('list_user'));
    }
    public function postShowOffCV_AD(Request $req, $id)
    {

        if ($req->show_off == 0) {
            $show_off = '1';
        } else {
            $show_off = '0';
        }

        $str = [
            'show_off' => $show_off,
        ];
        CV::updateOrInsert(['cv_id' => $id], $str);
        return redirect()->back();
    }
    public function postDelCV($id)
    {

        CV::where('cv_id', $id)->delete();
        Education::where('id', $id)->delete();
        Experience::where('id', $id)->delete();
        Reference::where('id', $id)->delete();
        Skill::where('id', $id)->delete();
        Reference::where('id', $id)->delete();

        return redirect()->route('quanlycv')->with('message', 'Đã xóa dữ liệu');
    }
    public function postDelJob($id)
    {

        PostJob::where('id',  $id)->delete();
        JobGroup::where('id_job',  $id)->delete();
        JobRegion::where('id_job', $id)->delete();
        Job_Skill::where('id_job',  $id)->delete();
        TypeofjobJob::where('id_job',  $id)->delete();
        BenefitJob::where('id_job', $id)->delete();
        LanguageJob::where('id_job',  $id)->delete();

        return redirect()->route('quanlyvieclam')->with('message', 'Đã xóa dữ liệu');
    }
    public function postDelUser($id)
    {

        Upload::where('id',  $id)->delete();

        return redirect()->route('quanlytaikhoan')->with('message', 'Đã xóa dữ liệu');
    }
    public function postFindCV(Request $req)
    {


        $skill = Skill_IT::all();
        $list_user = CV::join('users', 'users.id', '=', 'cv.user_id')->join('selected_cv', 'cv.user_id', '=', 'selected_cv.user_id')->join('careerobjective', 'cv.cv_id', '=', 'careerobjective.cv_id')->paginate(8);

        return view('cvlist', compact('list_user','skill'));
    }
    // Quản lý ứng tuyển
    public function getQuanlyungtuyen($id)
    {
        $list_candidate = ShowRecruitment::where('id_company', $id)->get();

        return view('quanlyungtuyen', compact('list_candidate'));

    }
    public function postQuanlyungtuyen(Request $req,$id)
    {
       
        $job_id = $req->txtjob_id;
        $user_id = $req->txtuser_id;
        $company_id= $req->txtcompany_id;
        $date_time = Carbon::now('Asia/Ho_Chi_Minh');


        $str = [
            'job_id' => $job_id, 'company_id' => $company_id, 'datetime' => $date_time,'user_id' => $user_id,
        ];
        JobAnnouncement::updateOrInsert(['job_id' => $job_id,'user_id' => $user_id], $str);

        return redirect()->route('quanlyungtuyen',Auth::user()->id)->with('message', 'Đã thêm dữ liệu');
    }
    // thông báo việc làm
    public function getThongbaovieclam($id)
    {
        $announcement = ShowNotification::where('user_id', $id)->get();

        return view('thongbaovieclam', compact('announcement'));

    }
}
