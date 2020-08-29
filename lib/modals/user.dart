import 'package:futsal/modals/imageData.dart';

class User {
  final String uid;
  User({this.uid});
}

class UserData {
  final String uid;
  final String name;
  final String phone;
  final String teamName;
  final String kitNo;
  final ImageData image;

  UserData({this.uid, this.name, this.phone, this.teamName, this.kitNo, this.image});
}
