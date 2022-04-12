import 'package:bloc_example/src/ui/views/pages/all_employees.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllEmployee())), child: Container(
              child: Text("All Employees"),
            ))
          ],
        ),
      ),
    );
  }
}
