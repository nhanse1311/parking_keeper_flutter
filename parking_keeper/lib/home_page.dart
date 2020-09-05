import 'package:flutter/material.dart';
import 'package:parking_keeper/fragment/home_fragment.dart';
import 'package:parking_keeper/fragment/profile_fragment.dart';
import 'package:parking_keeper/widgets/drawer_home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Trang chủ'),
      routes: {
        // '/ProfilePages': (context) => Profile(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeFragment(),
    HomeFragment(),
    ProfileFragment()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerHome(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),

      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: const Alignment(0.7, -0.5),
                  end: const Alignment(0.6, 0.5),
                  colors: [
                    Colors.lightBlue,
                    Colors.blue,
                  ],
                ),
              ),
              child: Icon(Icons.qr_code_scanner, size: 30),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, // new, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Trang Chủ'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              title: new Text('Quét Mã'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Cá Nhân')
            )
          ],
        ),
      body:_children[_currentIndex],
    );
  }

  //function
  //function to select fragment
  void onTabTapped(int index) {
    setState(() {
      if(index==1){
        _currentIndex = 0;
      }else{
        _currentIndex = index;
      }
    });
  }
}
