import 'package:equatable/equatable.dart';

abstract class AllEmployeeEvent extends Equatable{
  List<Object> get props =>[];
}
class GetEmployeeList extends AllEmployeeEvent{}