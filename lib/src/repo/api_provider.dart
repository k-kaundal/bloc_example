import 'package:bloc_example/src/models/all_employee_model.dart';
import 'package:bloc_example/src/models/create_employee_model.dart';
import 'package:bloc_example/src/models/employee_model.dart';
import 'package:bloc_example/src/models/interests.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'http://112.196.117.52/zillup/api/v1/interests';
  final String _baseUri = 'http://dummy.restapiexample.com/api/v1/';

  Future<Interests> fetchInterest() async {
    try {
      Response response = await _dio.get(_url);
      print(response.data);
      return Interests.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return Interests.withError("Data not found/ Connection issues");
    }
  }

  Future<EmployeeModel> fetchEmployee({required String id}) async{
    try {
      Response response = await _dio.get(_baseUri + 'employee');
      return EmployeeModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Error $error  stacktrace $stacktrace");
      return EmployeeModel.withError("Employee data not found");
    }
  }
  Future<AllEmployeeModel> fetchAllEmployee() async {
    try {
      Response response = await _dio.get(_baseUri + 'employees');
      return AllEmployeeModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Error $error  stacktrace $stacktrace");
      return AllEmployeeModel.withError("Employee data not found");
    }
  }

  Future<CreateEmployeeModel> createEmployee() async {
    try {
      Response response =
          await _dio.post(_baseUri + 'create', queryParameters: {});
      return CreateEmployeeModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print('error $error stacktrace $stacktrace' );
      return CreateEmployeeModel.withError("Error in creating new employee");
    }
  }
}
