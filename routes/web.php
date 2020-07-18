<?php
Route::group(['middleware' => 'CheckEmployJob'], function () {
    // Quản lý ứng tuyển
    Route::get('quanlyungtuyen/{id}', 'JobController@getQuanlyungtuyen')->name('quanlyungtuyen');
    Route::post('quanlyungtuyen/{id}', 'JobController@postQuanlyungtuyen')->name('quanlyungtuyen');
    // Ẩn hiện việc làm
    
    Route::post('postshowoff/{id}', 'JobController@postShowOff')->name('postshowoff');
    Route::post('postshowoffcv_ad/{id}', 'JobController@postShowOffCV_AD')->name('postshowoffcv_ad');
    // thông tin công ty
    Route::get('thongtincongty/{id}', 'JobController@getThongtincongty')->name('thongtincongty');
    Route::post('thongtincongty/{id}', 'JobController@postThongtincongty')->name('thongtincongty');
    // đăng việc
    Route::get('postjob', 'JobController@getPostJob')->name('postjob');
    Route::post('postjob', 'JobController@postPostJob')->name('postjob');
    // xác nhận đăng việc
    Route::get('confirm/{idjob}', 'JobController@getConfirmPostJob')->name('confirm');
    Route::post('confirm/{idjob}', 'JobController@postConfirmPostJob')->name('confirm');
    // lưu 
    Route::post('savejob', 'JobController@postSave')->name('savejob');
    // hủy đăng
    Route::post('deljob', 'JobController@postDel')->name('deljob');
    // quản lý việc làm
    Route::get('vieclamdangdang/{id}', 'JobController@getVieclamdangdang')->name('vieclamdangdang');
    Route::post('vieclamdangdang/{id}', 'JobController@postVieclamdangdang')->name('vieclamdangdang');
    Route::get('vieclamchodang/{id}', 'JobController@getVieclamchodang')->name('vieclamchodang');
    Route::post('vieclamchodang/{id}', 'JobController@postVieclamchodang')->name('vieclamchodang');
    Route::get('vieclamtamdung/{id}', 'JobController@getVieclamtamdung')->name('vieclamtamdung');
    Route::post('vieclamtamdung/{id}', 'JobController@postVieclamtamdung')->name('vieclamtamdung');
    Route::get('vieclamhethan/{id}', 'JobController@getVieclamhethan')->name('vieclamhethan');
    Route::post('vieclamhethan/{id}', 'JobController@postVieclamhethan')->name('vieclamhethan');
    // cập nhật công việc
    Route::get('edit-job/{idjob}', 'JobController@getEditPostJob')->name('editPostJob');
    Route::post('edit-job/{idjob}', 'JobController@postEditPostJob')->name('editPostJob');
    
    });
Route::get('/', 'JobController@getIndex')->name('index');
Route::get('cvlist', 'JobController@getCV_List')->name('cvlist');
Route::get('findjobs', 'JobController@getFindJobs')->name('findjobs');
Route::get('information', 'JobController@getInformation')->name('information');
Route::get('thongtincongviec', 'JobController@getThongtincongviec')->name('thongtincongviec');

Route::get('thongbaovieclam', 'JobController@getThongbaovieclam')->name('thongbaovieclam');
Route::get('nhatuyendungxemhoso', 'JobController@getNhatuyendungxemhoso')->name('nhatuyendungxemhoso');


Route::get('updatejob', 'JobController@getUpdatejob')->name('updatejob');
Route::get('quanlytimkiemhoso', 'JobController@getQuanlytimkiemhoso')->name('quanlytimkiemhoso');


Route::get('thongtinlienhe', 'JobController@getThongtinlienhe')->name('thongtinlienhe');


Route::get('login', 'JobController@getLogin')->name('login');
Route::post('login', 'JobController@postLogin')->name('login');

Route::get('logout', 'JobController@getLogout')->name('logout');
// đăng ký
Route::post('register', 'JobController@postRegister')->name('register');

// Hồ sơ
Route::get('profile/{id}', 'JobController@getProfile')->name('profile');
Route::post('cv-information', 'JobController@postInfor')->name('cv-information');
Route::post('cv-careerobj', 'JobController@postCareerObj')->name('cv-careerobj');
Route::post('cv-careerinfo', 'JobController@postCareerInfo')->name('cv-careerinfo');
Route::post('cv-experience', 'JobController@postExperience')->name('cv-experience');
Route::post('cv-experience-update', 'JobController@postExperienceUpdate')->name('cv-experience-update');
Route::post('cv-experience-delete', 'JobController@postExperienceDelete')->name('cv-experience-delete');
Route::post('cv-education', 'JobController@postEducation')->name('cv-education');
Route::post('cv-education-update', 'JobController@postEducationUpdate')->name('cv-education-update');
Route::post('cv-education-delete', 'JobController@postEducationDelete')->name('cv-education-delete');
Route::post('cv-reference', 'JobController@postReference')->name('cv-reference');
Route::post('cv-reference-update', 'JobController@postReferenceUpdate')->name('cv-reference-update');
Route::post('cv-reference-delete', 'JobController@postReferenceDelete')->name('cv-reference-delete');
Route::post('cv-skill', 'JobController@postSkill')->name('cv-skill');
Route::post('cv-skill-update', 'JobController@postSkillUpdate')->name('cv-skill-update');
Route::post('cv-skill-delete', 'JobController@postSkillDelete')->name('cv-skill-delete');
Route::post('upload-image-profile', 'JobController@postUploadImage')->name('cv-upload-image-profile');

Route::get('submitted-job', 'JobController@getSubmittedJob')->name('submittedJob');

// quản lý hồ sơ
Route::get('quanlyhoso/{id}', 'JobController@getQuanlyhoso')->name('quanlyhoso');
Route::get('view-cv/{id}', 'JobController@getViewCV')->name('viewCV');
Route::get('view-cv1/{id}', 'JobController@getViewCV1')->name('viewCV1');
Route::get('view-job/{id}', 'JobController@getViewJob')->name('viewJob');
Route::post('template_cv/{id}', 'JobController@postTemplate_CV')->name('template_cv');
//tìm kiếm
Route::post('findjobs', 'JobController@postSearch')->name('findjobs');
Route::get('findjobs', 'JobController@postSearch')->name('findjobs');
Route::post('findjob', 'JobController@post_Search')->name('findjob');
Route::get('findjob', 'JobController@post_Search')->name('findjob');
Route::post('findcv', 'JobController@postFindCV')->name('findcv');
// việc làm theo nhóm
Route::get('vieclamittheonhom/{jobID}', 'JobController@getVieclamittheonhom')->name('vieclamittheonhom');
// việc làm của tôi
Route::get('vieclamcuatoi/{id}', 'JobController@getMyJob')->name('vieclamcuatoi');
// việc làm đã nộp
Route::get('vieclamdanop/{id}', 'JobController@getSubmitJob')->name('vieclamdanop');
// đổi mật khẩu
Route::get('change_password/{id}', 'JobController@getChange_password')->name('change_password');
Route::get('changepassword/{id}', 'JobController@getRepassword')->name('changepassword');
Route::post('changepassword/{id}', 'JobController@postRepassword')->name('changepassword');
// thông tin việc làm
Route::get('thongtincongviec/{id}', 'JobController@getThongtincongviec')->name('thongtincongviec');
Route::post('thongtincongviec/{id}', 'JobController@postThongtincongviec')->name('thongtincongviec');
Route::post('postmyjob', 'JobController@postThongtincongviec')->name('postmyjob');
// nộp việc làm
Route::post('submitjob', 'JobController@postSubmitjob')->name('submitjob');

// lọc theo địa điểm

Route::post('postaddress', 'JobController@postAddress')->name('postaddress');
// lọc theo kỹ năng
Route::post('postfindskill', 'JobController@postFindSkill')->name('postfindskill');
// email
Route::post('email', 'JobController@postEmail')->name('email');

// admin
Route::get('quanlycv', 'JobController@getQuanlycv')->name('quanlycv');
Route::get('quanlyvieclam', 'JobController@getQuanlyvieclam')->name('quanlyvieclam');
Route::get('quanlytaikhoan', 'JobController@getQuanlytaikhoan')->name('quanlytaikhoan');
Route::post('delcv/{id}', 'JobController@postDelCV')->name('delcv');
Route::post('deljob/{id}', 'JobController@postDelJob')->name('deljob');
Route::post('deluser/{id}', 'JobController@postDelUser')->name('deluser');

// Thông báo việc làm
Route::get('thongbaovieclam/{id}', 'JobController@getThongbaovieclam')->name('thongbaovieclam');


