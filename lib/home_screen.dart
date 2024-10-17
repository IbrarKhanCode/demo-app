import 'package:demo_app/widgets/tab_one.dart';
import 'package:demo_app/widgets/tab_three.dart';
import 'package:demo_app/widgets/tab_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(Icons.home,size: 25,color: Colors.white,),
        title: Text('Demo App',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.menu,color: Colors.white,),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                        indicatorColor: Colors.teal,
                        labelStyle: TextStyle(fontWeight: FontWeight.w800),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.deepPurpleAccent,
                        tabs: [
                         Tab(
                           child: Text('Tab 1'),
                         ) ,
                          Tab(
                            child: Text('Tab 2'),
                          ),
                          Tab(
                            child: Text('Tab 3'),
                          )
                        ]
                    ),
                   Expanded(
                     child: TabBarView(
                         children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                TabOne(),
                              ],
                            ),
                          ),
                           SingleChildScrollView(
                             child: Column(
                               children: [
                                 TabTwo(),
                               ],
                             ),
                           ),
                           SingleChildScrollView(
                             child: Column(
                               children: [
                                 TabThree(),
                               ],
                             ),
                           )
                         ]
                     ),
                   ),
                  ],
                ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.deepOrangeAccent,
        currentIndex: currentIndex,
        iconSize: 30,
        onTap: (int newIndex){
          setState(() {
            currentIndex = newIndex;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.orange,),label: 'Menu',),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined,color: Colors.orange,),label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.orange,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.telegram,color: Colors.orange,),label: 'Telegram'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined,color: Colors.orange,),label: 'Person'),
        ],
      ),
    );
  }
}
