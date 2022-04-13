import 'package:bloc_example/src/ui/views/pages/all_employees.dart';
import 'package:bloc_example/src/ui/views/pages/settings.dart';
import 'package:flutter/material.dart';
import '../../../config/style.dart';
import '../../widgets/custom_tab_bar.dart';
import '../pages/call_page.dart';
import '../pages/camera_page.dart';
import '../pages/status_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearch = false;
  int _currentPageIndex = 1;
  PageController _pageViewController = PageController(initialPage: 1);

  List<Widget> get _pages => [
        CameraPage(),
        AllEmployee(),
        StatusPage(),
        CallPage(),
      ];

  _buildSearch() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.3),
            spreadRadius: 1,
            offset: Offset(0.0, 0.50))
      ]),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          prefixIcon: InkWell(
            onTap: () {
              //TODO:
              setState(() {
                _isSearch = false;
              });
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }

  showPopupMenu(){
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(200, 100, 10, 0),
      items: [
        PopupMenuItem(
          value: 1,
          child: InkWell(
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
              },
              child: Text("Settings")),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Demo"),
        ),
        PopupMenuItem(
          value: 3,
          child: Text("Demo"),
        ),
      ],
      elevation: 8.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentPageIndex != 0
          ? AppBar(
              elevation: 0.0,
              automaticallyImplyLeading: false,
              backgroundColor:
                  _isSearch == false ? primaryColor : Colors.transparent,
              title: _isSearch == false
                  ? Text("WhatsApp Clone")
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    ),
              flexibleSpace: _isSearch == false
                  ? Container(
                      height: 0.0,
                      width: 0.0,
                    )
                  : _buildSearch(),
              actions: <Widget>[
                InkWell(
                    onTap: () {
                      setState(() {
                        _isSearch = true;
                      });
                    },
                    child: Icon(Icons.search)),
                SizedBox(
                  width: 5,
                ),
                InkWell(onTap: showPopupMenu, child: Icon(Icons.more_vert))
              ],
            )
          : null,
      body: Column(
        children: <Widget>[
          //TODO:CustomTabBar
          _isSearch == false
              ? _currentPageIndex != 0
                  ? CustomTabBar(index: _currentPageIndex)
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    )
              : Container(
                  height: 0.0,
                  width: 0.0,
                ),
          Expanded(
            child: PageView.builder(
              itemCount: _pages.length,
              controller: _pageViewController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              itemBuilder: (_, index) {
                return _pages[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
