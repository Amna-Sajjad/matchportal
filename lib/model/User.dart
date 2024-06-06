
class User{
  String? uid;
  String? name;
  String? randomID;
  String? email;
  String? password;
  String? imgUrl;


  User(this.uid, this.name, this.randomID, this.email, this.password,
      this.imgUrl);

  Map<String, dynamic> toJson(){
    return {
      'uid':uid,
      'randomID':randomID,
      'name':name,
      'email':email,
      'password':password,
      'img':imgUrl
    };
  }
  User .fromJson(Map<String, dynamic> map){
    uid = map['uid'];
    name = map['name'];
    randomID = map['randomID'];
    email = map['email'];
    password = map['password'];
    imgUrl = map['imgUrl'];
  }
}