import 'package:bloc_example/src/models/interests.dart';
import 'package:dio/dio.dart';

class ApiProvider{
  final Dio _dio  = Dio();
  final String _url = 'http://112.196.117.52/zillup/api/v1/interests';

  Future<Interests> fetchInterest() async{
    try{
      Response response = await _dio.get(_url);
      print(response.data);
      return Interests.fromJson(response.data);
    } catch (error , stacktrace){
      print('Exception occured: $error stackTrace: $stacktrace');
      return Interests.withError("Data not found/ Connection issues");
    }
  }
}