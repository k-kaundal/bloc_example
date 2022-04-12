import 'package:bloc_example/src/config/style.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Setings'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                    )),
                Expanded(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anchal',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        Text('Busy')
                      ],
                    )),
                Expanded(flex: 1, child: Icon(Icons.qr_code,color: primaryColor,))
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Icon(Icons.key)),
                      Expanded(
                          flex: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Account',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('Privacy,security,change number')
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Icon(Icons.message)),
                      Expanded(
                          flex: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chats',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('Theme,wallpapers,change chat history')
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Icon(Icons.notifications_sharp)),
                      Expanded(
                          flex: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Notifications',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('Message,group & call tones')
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Icon(Icons.circle)),
                      Expanded(
                          flex: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Storage and data',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('Network usage, auto-download')
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Icon(Icons.info_outline)),
                      Expanded(
                          flex: 9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Help',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('Help centre, contact us, privacy policy')
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Icon(Icons.group)),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'Invite a friend',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('from'),
                      Text(
                        'Meta',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
