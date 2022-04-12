import 'package:bloc_example/src/ui/views/pages/all_employees.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Example',),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllEmployee()));
              }, child: Container(
                width: size.width*0.8,
                child: Text("All Employees", textAlign: TextAlign.center,),
              )),
              ElevatedButton(onPressed: (){
              }, child: Container(
                width: size.width*0.8,
                child: Text("Employee", textAlign: TextAlign.center,),
              )),
              ElevatedButton(onPressed: (){
              }, child: Container(
                width: size.width*0.8,
                child: Text("Create Employee", textAlign: TextAlign.center,),
              )),
              ElevatedButton(onPressed: (){
              }, child: Container(
                width: size.width*0.8,
                child: Text("Update Employee", textAlign: TextAlign.center,),
              )),
              ElevatedButton(onPressed: (){
              }, child: Container(
                width: size.width*0.8,
                child: Text("Delete Employee", textAlign: TextAlign.center,),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
