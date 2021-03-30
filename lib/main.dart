import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List avatars = [
    {
      'image': 'assets/avatar1.jpg',
      'name': 'Ahmed AbdelZaher',
      'chat': 'Hello, Tawfik'
    },
    {
      'image': 'assets/avatar2.jpg',
      'name': 'Lucky Egypt',
      'chat': 'Check our new offers'
    },
    {
      'image': 'assets/avatar3.jpg',
      'name': 'Abode Alaa',
      'chat': 'Lets play together'
    },
    {
      'image': 'assets/avatar4.jpg',
      'name': 'Karim Magdy',
      'chat': 'Did you see GTA5 new update'
    },
    {
      'image': 'assets/avatar5.jpg',
      'name': 'Waleed Mohamed',
      'chat': 'I bought new smartphone'
    },
    {
      'image': 'assets/avatar6.jpg',
      'name': 'Mohamed Alaa',
      'chat': 'I got full marks in yesterday\'s exam'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'fo'
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, right: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/avatar.jpg',
                            height: 45,
                            width: 45,
                          ),
                        ),
                      ),
                      Text(
                        'Chats',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 34),
                      ),
                      SizedBox(
                        width: 110,
                      ),  // Change this box width if there is error in the top
                      Container(
                          width: 45,
                          height: 45,
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade200),
                          child: IconButton(
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                              ),
                              onPressed: () {})),
                      Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200),
                        child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ), //Custom AppBar
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                      color: Color(0xFFf5f5f5),
                      borderRadius: BorderRadius.circular(40)),
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title: Text(
                      'Search',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                ), // Search
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: avatars.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        margin: i == 0 ? EdgeInsets.only(left: 25,right: 10):EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                avatars[i]['image'],
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ListView.builder(
                    itemCount: avatars.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image.asset(
                                  avatars[i]['image'],
                                  height: 55,
                                  width: 55,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                '${avatars[i]['name']}',style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text('${avatars[i]['chat']}'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          elevation: 32,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outlined,size: 25,),label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.people_rounded,size: 25,),label: 'Friends'),
          ],
        ),
      ),
    );
  }
}