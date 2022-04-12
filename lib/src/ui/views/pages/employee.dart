import 'package:bloc_example/src/blocs/employee/employee_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/employee/employee_state.dart';
class Employee extends StatefulWidget {
  Employee({Key? key, required String id}) : super(key: key);
  String? id;

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
 late final EmployeeBloc _employeeBloc;
  @override
  void initState() {
    // TODO: implement initState
    _employeeBloc = EmployeeBloc(id: widget.id.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (BuildContext context) => _employeeBloc,
        child: BlocListener<EmployeeBloc, EmployeeState>(
          listener: (context, state) {
            print(state.props.length);
            if (state is EmployeeError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message.toString()),
              ));
            }
          },
          child: BlocBuilder<EmployeeBloc, EmployeeState>(
            builder: (context, state) {
              print(state.props.length);
              if (state is EmployeeInitial) {
                return Container();
              } else if (state is EmployeeLoading) {
                return Container();
              } else if (state is EmployeeLoaded) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
  Widget profileView(){
    return Container();
  }
}
