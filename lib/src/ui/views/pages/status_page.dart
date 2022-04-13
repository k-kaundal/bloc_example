import 'package:flutter/material.dart';
class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                  flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Demo',style: TextStyle(fontSize: 18),),
                    Text('Demo',style: TextStyle(fontSize: 12),)
                  ],
                )),
                Expanded(
                    flex: 1,
                    child: Icon(Icons.more_horiz))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
              child: Text('Recent updates',style: TextStyle(fontSize: 12),)),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Text('Viewed updates',style: TextStyle(fontSize: 12),)),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(radius: 25,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),)),
                Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Demo',style: TextStyle(fontSize: 18),),
                        Text('Demo',style: TextStyle(fontSize: 12),)
                      ],
                    )),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
