
import 'package:equatable/equatable.dart';

abstract class EmployeeEvent extends Equatable{
  List<Object> get props =>[];
}
class GetEmployeeList extends EmployeeEvent{}