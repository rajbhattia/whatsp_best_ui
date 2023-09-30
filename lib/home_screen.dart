import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_Screen';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chats'),
            ),
            
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        value: '1',
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: '2',
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: '3',
                        child: Text('Logout'),
                      ),
                    ]),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
         
          ListView.builder(
              itemCount: 7,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('asset/logo.png'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('Where is my Dog'),
                  trailing: Text('6:26 PM'),
                );
              })),
               ListView.builder(
              itemCount: 7,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue,
                        width: 2
                      )
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('asset/logo.png'),
                    ),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('35 min ago'),
                  // trailing: Text('6:26 PM'),
                );
              })),
           ListView.builder(
              itemCount: 12,
              itemBuilder: ((context, index) {
                return  ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('asset/logo.png'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text(index / 2 == 0 ? 'You Missed audio Call' : 'call time is 12:23 PM'),
                  trailing: Icon( index / 2 == 0 ? Icons.phone : Icons.video_call,),
                );
              })),
        ]),
      ),
    );
  }
}
