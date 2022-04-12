import 'package:bloc_example/src/models/all_employee_model.dart';
import 'package:bloc_example/src/models/create_employee_model.dart';
import 'package:bloc_example/src/models/interests.dart';

import 'api_provider.dart';

class Repository{
  final _provider = ApiProvider();
  Future<Interests> fetchInterest(){
    return _provider.fetchInterest();
  }

  Future<AllEmployeeModel> fetchAllEmployee(){
    return _provider.fetchAllEmployee();
  }

  Future<CreateEmployeeModel> createEmployee(){
    return _provider.createEmployee();
  }


}

class NetworkError extends Error{}