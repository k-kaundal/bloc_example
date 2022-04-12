import 'package:equatable/equatable.dart';

import '../../models/create_employee_model.dart';

abstract class CreateEmployeeState extends Equatable{
  const  CreateEmployeeState();
  List<Object> get props => [];
}

class CreateEmployeeInitial extends CreateEmployeeState{}

class CreateEmployeeLoading extends CreateEmployeeState{}

class CreateEmployeeLoaded extends CreateEmployeeState{
  final CreateEmployeeModel createEmployeeModel;
  CreateEmployeeLoaded(this.createEmployeeModel);
}
class CreateEmployeeError extends CreateEmployeeState{
  final String? message;
  CreateEmployeeError(this.message);
}