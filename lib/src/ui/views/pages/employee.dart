import 'package:bloc_example/src/blocs/employee/employee_bloc.dart';
import 'package:bloc_example/src/blocs/employee/employee_event.dart';
import 'package:bloc_example/src/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/employee/employee_state.dart';

class Employee extends StatefulWidget {
  String? id;

  Employee({Key? key, required this.id}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  EmployeeBloc _employeeBloc = EmployeeBloc();

  @override
  void initState() {
    // TODO: implement initState
    _employeeBloc.add(GetEmployee(id: widget.id.toString()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BlocProvider(
      create: (context) => _employeeBloc,
      child: BlocListener<EmployeeBloc, EmployeeState>(
        listener: (context, state) {
          if (state is EmployeeError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message.toString()),
            ));
          }
        },
        child: BlocBuilder<EmployeeBloc, EmployeeState>(
          builder: (context, state) {
            if (state is EmployeeInitial) {
              return Container();
            } else if (state is EmployeeLoading) {
              return Container();
            } else if (state is EmployeeLoaded) {
              return Container(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(state
                              .employeeModel.data!.profileImage
                              .toString()),
                          radius: 60,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height*0.01),
                          child: Text(
                            state.employeeModel.data!.employeeName.toString(),
                            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height*0.02),
                          height: size.height * 0.65,
                          width: size.width * 0.9,
                          child: Column(
                            children: [
                              Card(
                                child: Padding(
                                  padding: EdgeInsets.all(size.width * 0.01),
                                  child: Container(
                                    width: size.width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text('Employee ID',style: TextStyle(fontStyle: FontStyle.italic),)),
                                        Padding(
                                          padding: EdgeInsets.all(2),
                                          child: Text(state.employeeModel.data!.id
                                              .toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: EdgeInsets.all(size.width * 0.01),
                                  child: Container(
                                    width: size.width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text('Employee Age',style: TextStyle(fontStyle: FontStyle.italic),)),
                                        Padding(
                                          padding: EdgeInsets.all(2),
                                          child: Text(state.employeeModel.data!.employeeAge
                                              .toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: EdgeInsets.all(size.width * 0.01),
                                  child: Container(
                                    width: size.width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text('Employee Salary',style: TextStyle(fontStyle: FontStyle.italic),)),
                                        Padding(
                                          padding: EdgeInsets.all(2),
                                          child: Text(state.employeeModel.data!.employeeSalary
                                              .toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ]),
                ),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    ));
  }
}
