import 'package:bloc_example/src/blocs/all_employee/all_employee_bloc.dart';
import 'package:bloc_example/src/blocs/all_employee/all_employee_state.dart';
import 'package:bloc_example/src/ui/views/pages/employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../blocs/all_employee/all_employee_event.dart';

class AllEmployee extends StatefulWidget {
  const AllEmployee({Key? key}) : super(key: key);

  @override
  State<AllEmployee> createState() => _AllEmployeeState();
}

class _AllEmployeeState extends State<AllEmployee> {
  final AllEmployeeBloc _allEmployeeBloc = AllEmployeeBloc();

  @override
  void initState() {
    // TODO: implement initState
    _allEmployeeBloc.add(GetEmployeeList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("All Employees"),
      ),
      body: BlocProvider(
        create: (BuildContext context) => _allEmployeeBloc,
        child: BlocListener<AllEmployeeBloc, AllEmployeeState>(
          listener: (context, state) {
            if (state is AllEmployeeError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message.toString()),
              ));

            }
          },
          child: BlocBuilder<AllEmployeeBloc, AllEmployeeState>(
            builder: (context, state) {
              if (state is AllEmployeeInitial) {
                return Center(child: CircularProgressIndicator());
              } else if (state is AllEmployeeLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is AllEmployeeLoaded) {
                return ListView.builder(
                    itemCount: state.allEmployeeModel.data!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Employee(
                                      id: state.allEmployeeModel.data![index].id
                                          .toString(),
                                    ))),
                        child: Card(
                            elevation: 2,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(state
                                              .allEmployeeModel
                                              .data![index]
                                              .profileImage
                                              .toString()),
                                          // backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 9,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                state.allEmployeeModel
                                                    .data![index].employeeName
                                                    .toString(),
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Text(
                                                state.allEmployeeModel
                                                    .data![index].employeeSalary
                                                    .toString(),
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic),
                                              )
                                            ]),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.blue,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    });
              } else {
                return Center(child: ElevatedButton(onPressed: ()=>Navigator.of(context).pop(),
                child: Container(child: Text('Back'),),));
              }
            },
          ),
        ),
      ),
    );
  }
}
