class CreateUser{
  String? name;
  String? email;
  String? phone;
  String? uId;
  CreateUser.fromJson({required Map<String,dynamic>json}){
    this.name=json['name'];
    this.email=json['email'];
    this.phone=json['phone'];
    this.uId=json['uId'];
  }
  CreateUser({String? name, String? email, String? phone, String? uId}){
    this.name=name;
    this.email=email;
    this.phone=phone;
    this.uId=uId;
  }
  Map<String,dynamic>toMap()=>
       {
    'name':this.name,
     'email':this.email  ,
    'phone':this.phone,
        'uId':this.uId

      };


}