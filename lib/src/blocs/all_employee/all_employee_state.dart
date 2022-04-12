
import 'package:bloc_example/src/models/all_employee_model.dart';
import 'package:equatable/equatable.dart';

abstract class AllEmployeeState extends Equatable{
  const  AllEmployeeState();
  List<Object> get props => [];
}

class AllEmployeeInitial extends AllEmployeeState{}

class AllEmployeeLoading extends AllEmployeeState{}

class AllEmployeeLoaded extends AllEmployeeState{
 final AllEmployeeModel allEmployeeModel;
  AllEmployeeLoaded(this.allEmployeeModel);
}
class AllEmployeeError extends AllEmployeeState{
  final String? message;
  AllEmployeeError(this.message);
}