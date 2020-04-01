
import 'dart:convert';

import 'package:flutter_task/Models/CourseModel.dart';
import 'package:http/http.dart'as http;
class CourseServices{
  String _url="http://skillzycp.com/api/UserApi/getOneOccasion/389/0";


  Future<CourseModel> getCourse()async{
    http.Response _response=await http.get(_url);
if(_response.statusCode== 200){
  final jsonData=json.decode(_response.body);
  final jsonobject=json.decode(jsonData);
  return CourseModel.fromJson(jsonobject);
}
  }
}