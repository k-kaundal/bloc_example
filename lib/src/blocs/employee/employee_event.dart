
import 'package:equatable/equatable.dart';

abstract class EmployeeEvent extends Equatable{

  List<Object> get props =>[];

}
class GetEmployee extends EmployeeEvent{
  final String id;
  GetEmployee({required this.id});
}