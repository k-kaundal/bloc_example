import 'package:bloc_example/src/models/employee_model.dart';
import 'package:equatable/equatable.dart';

import '../../models/all_employee_model.dart';

class EmployeeState extends Equatable {
  const EmployeeState({this.id});

  final String? id;

  List<Object> get props => [id.toString()];
}

class EmployeeInitial extends EmployeeState {}

class EmployeeLoading extends EmployeeState {}

class EmployeeLoaded extends EmployeeState {
  final EmployeeModel employeeModel;

  EmployeeLoaded(this.employeeModel);
}

class EmployeeError extends EmployeeState {
  final String? message;

  EmployeeError(this.message);
}
