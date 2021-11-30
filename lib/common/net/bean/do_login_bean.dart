/// SUBJECT : "地理"
/// USER_ID : "78ED8CCA2BF9F53FC530EA84C51FB357"
/// GRADE : "初中"
/// USER_CODE : "LAN"
/// YEAR : "2021"
/// DEPT_CODE : "440199-09285"
/// TERM_CODE : "2102"
/// CORR_ADDRESS : "阿迪50"
/// REALNAME : "演示账号"
/// TEACHER_ID : "440110199942047"
/// imObj : {"USER_EMAIL":"1587032750@qq.com","USER_TYPE_NAME":"学生","CITY_ID":"","USER_STATUE":"1","AREA_ID":"","USER_DOMICILE":"","USER_DEC":"在岗状态变化，请重新填写个人信息!","STATUS":"1","IM_USERID":"","SEX":"2","USER_IMG":"http://file.ttcn.cn/upload/downloadFile.do?uploadInfoId=437ea81a060346a2b50bac92fcc8aba1","EE_NO":"97548573481","USER_IDCARO":"440100197106026655","USER_ID":"78ED8CCA2BF9F53FC530EA84C51FB357","USER_PHONE":"15814513372","USER_TYPE":3,"ACCOUNT_PASSWORD":"76D2F25BC30D53C6B5046168234D7F9A","PROVINCE_NAME":"河南省","USER_MOOD":"","PROVINCE_ID":"41","USER_ALIAS":"","MANAGER_ID":"","MESSAGE":"成功","CITY_NAME":"广州","USER_NAME":"演示账号","AREA_NAME":"","USER_SIG":"eJx1kF1PgzAYRu-5FYRbjWlp*ajJLuogrmSY4DRRbkihZXaLfHbIZvzvTmYiN16fk5z3eT8N0zStp-XmhhdFfah0po*NtMxb0yK2a13-4aZRIuM6Q52YMMQAAEg87M0sOTaqkxkvtewmy3aIffZmihKy0qpUvwLxHOw7HsI*nEm92GdT8f9Ur7YTjMNkycLHHIBxWcgX3fJKBmT1FpbgFJWvMGqjPA6OYs-pqU2CZ6ruaH7l*4UYUpYyVuPV-ZjvBvoBHzCy0xiO45YnjPfrw44uFrOkVu*X10AXeS4mBM0PGmTXq7q6zAbQgTYg4Ge78WV8Aze8X6s_","USER_BIRTHDAY":"1995-06-21","VALID_TIME":""}
/// LOGIN : "Y"
/// MOBILE_PHONE : "15814513372"
/// EMAIL : "1587032750@qq.com"
/// PHOTO_PATH : "http://file.ttcn.cn/upload/downloadFile.do?uploadInfoId=437ea81a060346a2b50bac92fcc8aba1"
class LoginBean {
  LoginBean({
      String? subject, 
      String? userid, 
      String? grade, 
      String? usercode, 
      String? year, 
      String? deptcode, 
      String? termcode, 
      String? corraddress, 
      String? realname, 
      String? teacherid, 
      ImObj? imObj, 
      String? login, 
      String? mobilephone, 
      String? email, 
      String? photopath,}){
    _subject = subject;
    _userid = userid;
    _grade = grade;
    _usercode = usercode;
    _year = year;
    _deptcode = deptcode;
    _termcode = termcode;
    _corraddress = corraddress;
    _realname = realname;
    _teacherid = teacherid;
    _imObj = imObj;
    _login = login;
    _mobilephone = mobilephone;
    _email = email;
    _photopath = photopath;
}

  LoginBean.fromJson(dynamic json) {
    _subject = json['SUBJECT'];
    _userid = json['USER_ID'];
    _grade = json['GRADE'];
    _usercode = json['USER_CODE'];
    _year = json['YEAR'];
    _deptcode = json['DEPT_CODE'];
    _termcode = json['TERM_CODE'];
    _corraddress = json['CORR_ADDRESS'];
    _realname = json['REALNAME'];
    _teacherid = json['TEACHER_ID'];
    _imObj = json['imObj'] != null ? ImObj.fromJson(json['imObj']) : null;
    _login = json['LOGIN'];
    _mobilephone = json['MOBILE_PHONE'];
    _email = json['EMAIL'];
    _photopath = json['PHOTO_PATH'];
  }
  String? _subject;
  String? _userid;
  String? _grade;
  String? _usercode;
  String? _year;
  String? _deptcode;
  String? _termcode;
  String? _corraddress;
  String? _realname;
  String? _teacherid;
  ImObj? _imObj;
  String? _login;
  String? _mobilephone;
  String? _email;
  String? _photopath;

  String? get subject => _subject;
  String? get userid => _userid;
  String? get grade => _grade;
  String? get usercode => _usercode;
  String? get year => _year;
  String? get deptcode => _deptcode;
  String? get termcode => _termcode;
  String? get corraddress => _corraddress;
  String? get realname => _realname;
  String? get teacherid => _teacherid;
  ImObj? get imObj => _imObj;
  String? get login => _login;
  String? get mobilephone => _mobilephone;
  String? get email => _email;
  String? get photopath => _photopath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['SUBJECT'] = _subject;
    map['USER_ID'] = _userid;
    map['GRADE'] = _grade;
    map['USER_CODE'] = _usercode;
    map['YEAR'] = _year;
    map['DEPT_CODE'] = _deptcode;
    map['TERM_CODE'] = _termcode;
    map['CORR_ADDRESS'] = _corraddress;
    map['REALNAME'] = _realname;
    map['TEACHER_ID'] = _teacherid;
    if (_imObj != null) {
      map['imObj'] = _imObj?.toJson();
    }
    map['LOGIN'] = _login;
    map['MOBILE_PHONE'] = _mobilephone;
    map['EMAIL'] = _email;
    map['PHOTO_PATH'] = _photopath;
    return map;
  }

}

/// USER_EMAIL : "1587032750@qq.com"
/// USER_TYPE_NAME : "学生"
/// CITY_ID : ""
/// USER_STATUE : "1"
/// AREA_ID : ""
/// USER_DOMICILE : ""
/// USER_DEC : "在岗状态变化，请重新填写个人信息!"
/// STATUS : "1"
/// IM_USERID : ""
/// SEX : "2"
/// USER_IMG : "http://file.ttcn.cn/upload/downloadFile.do?uploadInfoId=437ea81a060346a2b50bac92fcc8aba1"
/// EE_NO : "97548573481"
/// USER_IDCARO : "440100197106026655"
/// USER_ID : "78ED8CCA2BF9F53FC530EA84C51FB357"
/// USER_PHONE : "15814513372"
/// USER_TYPE : 3
/// ACCOUNT_PASSWORD : "76D2F25BC30D53C6B5046168234D7F9A"
/// PROVINCE_NAME : "河南省"
/// USER_MOOD : ""
/// PROVINCE_ID : "41"
/// USER_ALIAS : ""
/// MANAGER_ID : ""
/// MESSAGE : "成功"
/// CITY_NAME : "广州"
/// USER_NAME : "演示账号"
/// AREA_NAME : ""
/// USER_SIG : "eJx1kF1PgzAYRu-5FYRbjWlp*ajJLuogrmSY4DRRbkihZXaLfHbIZvzvTmYiN16fk5z3eT8N0zStp-XmhhdFfah0po*NtMxb0yK2a13-4aZRIuM6Q52YMMQAAEg87M0sOTaqkxkvtewmy3aIffZmihKy0qpUvwLxHOw7HsI*nEm92GdT8f9Ur7YTjMNkycLHHIBxWcgX3fJKBmT1FpbgFJWvMGqjPA6OYs-pqU2CZ6ruaH7l*4UYUpYyVuPV-ZjvBvoBHzCy0xiO45YnjPfrw44uFrOkVu*X10AXeS4mBM0PGmTXq7q6zAbQgTYg4Ge78WV8Aze8X6s_"
/// USER_BIRTHDAY : "1995-06-21"
/// VALID_TIME : ""

class ImObj {
  ImObj({
      String? useremail, 
      String? usertypename, 
      String? cityid, 
      String? userstatue, 
      String? areaid, 
      String? userdomicile, 
      String? userdec, 
      String? status, 
      String? imuserid, 
      String? sex, 
      String? userimg, 
      String? eeno, 
      String? useridcaro, 
      String? userid, 
      String? userphone, 
      int? usertype, 
      String? accountpassword, 
      String? provincename, 
      String? usermood, 
      String? provinceid, 
      String? useralias, 
      String? managerid, 
      String? message, 
      String? cityname, 
      String? username, 
      String? areaname, 
      String? usersig, 
      String? userbirthday, 
      String? validtime,}){
    _useremail = useremail;
    _usertypename = usertypename;
    _cityid = cityid;
    _userstatue = userstatue;
    _areaid = areaid;
    _userdomicile = userdomicile;
    _userdec = userdec;
    _status = status;
    _imuserid = imuserid;
    _sex = sex;
    _userimg = userimg;
    _eeno = eeno;
    _useridcaro = useridcaro;
    _userid = userid;
    _userphone = userphone;
    _usertype = usertype;
    _accountpassword = accountpassword;
    _provincename = provincename;
    _usermood = usermood;
    _provinceid = provinceid;
    _useralias = useralias;
    _managerid = managerid;
    _message = message;
    _cityname = cityname;
    _username = username;
    _areaname = areaname;
    _usersig = usersig;
    _userbirthday = userbirthday;
    _validtime = validtime;
}

  ImObj.fromJson(dynamic json) {
    _useremail = json['USER_EMAIL'];
    _usertypename = json['USER_TYPE_NAME'];
    _cityid = json['CITY_ID'];
    _userstatue = json['USER_STATUE'];
    _areaid = json['AREA_ID'];
    _userdomicile = json['USER_DOMICILE'];
    _userdec = json['USER_DEC'];
    _status = json['STATUS'];
    _imuserid = json['IM_USERID'];
    _sex = json['SEX'];
    _userimg = json['USER_IMG'];
    _eeno = json['EE_NO'];
    _useridcaro = json['USER_IDCARO'];
    _userid = json['USER_ID'];
    _userphone = json['USER_PHONE'];
    _usertype = json['USER_TYPE'];
    _accountpassword = json['ACCOUNT_PASSWORD'];
    _provincename = json['PROVINCE_NAME'];
    _usermood = json['USER_MOOD'];
    _provinceid = json['PROVINCE_ID'];
    _useralias = json['USER_ALIAS'];
    _managerid = json['MANAGER_ID'];
    _message = json['MESSAGE'];
    _cityname = json['CITY_NAME'];
    _username = json['USER_NAME'];
    _areaname = json['AREA_NAME'];
    _usersig = json['USER_SIG'];
    _userbirthday = json['USER_BIRTHDAY'];
    _validtime = json['VALID_TIME'];
  }
  String? _useremail;
  String? _usertypename;
  String? _cityid;
  String? _userstatue;
  String? _areaid;
  String? _userdomicile;
  String? _userdec;
  String? _status;
  String? _imuserid;
  String? _sex;
  String? _userimg;
  String? _eeno;
  String? _useridcaro;
  String? _userid;
  String? _userphone;
  int? _usertype;
  String? _accountpassword;
  String? _provincename;
  String? _usermood;
  String? _provinceid;
  String? _useralias;
  String? _managerid;
  String? _message;
  String? _cityname;
  String? _username;
  String? _areaname;
  String? _usersig;
  String? _userbirthday;
  String? _validtime;

  String? get useremail => _useremail;
  String? get usertypename => _usertypename;
  String? get cityid => _cityid;
  String? get userstatue => _userstatue;
  String? get areaid => _areaid;
  String? get userdomicile => _userdomicile;
  String? get userdec => _userdec;
  String? get status => _status;
  String? get imuserid => _imuserid;
  String? get sex => _sex;
  String? get userimg => _userimg;
  String? get eeno => _eeno;
  String? get useridcaro => _useridcaro;
  String? get userid => _userid;
  String? get userphone => _userphone;
  int? get usertype => _usertype;
  String? get accountpassword => _accountpassword;
  String? get provincename => _provincename;
  String? get usermood => _usermood;
  String? get provinceid => _provinceid;
  String? get useralias => _useralias;
  String? get managerid => _managerid;
  String? get message => _message;
  String? get cityname => _cityname;
  String? get username => _username;
  String? get areaname => _areaname;
  String? get usersig => _usersig;
  String? get userbirthday => _userbirthday;
  String? get validtime => _validtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['USER_EMAIL'] = _useremail;
    map['USER_TYPE_NAME'] = _usertypename;
    map['CITY_ID'] = _cityid;
    map['USER_STATUE'] = _userstatue;
    map['AREA_ID'] = _areaid;
    map['USER_DOMICILE'] = _userdomicile;
    map['USER_DEC'] = _userdec;
    map['STATUS'] = _status;
    map['IM_USERID'] = _imuserid;
    map['SEX'] = _sex;
    map['USER_IMG'] = _userimg;
    map['EE_NO'] = _eeno;
    map['USER_IDCARO'] = _useridcaro;
    map['USER_ID'] = _userid;
    map['USER_PHONE'] = _userphone;
    map['USER_TYPE'] = _usertype;
    map['ACCOUNT_PASSWORD'] = _accountpassword;
    map['PROVINCE_NAME'] = _provincename;
    map['USER_MOOD'] = _usermood;
    map['PROVINCE_ID'] = _provinceid;
    map['USER_ALIAS'] = _useralias;
    map['MANAGER_ID'] = _managerid;
    map['MESSAGE'] = _message;
    map['CITY_NAME'] = _cityname;
    map['USER_NAME'] = _username;
    map['AREA_NAME'] = _areaname;
    map['USER_SIG'] = _usersig;
    map['USER_BIRTHDAY'] = _userbirthday;
    map['VALID_TIME'] = _validtime;
    return map;
  }

}