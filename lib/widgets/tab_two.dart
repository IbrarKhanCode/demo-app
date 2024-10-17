import 'package:flutter/material.dart';
import 'package:share/share.dart';

class TabTwo extends StatefulWidget {
  const TabTwo({super.key});

  @override
  State<TabTwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {

  List images = [
    "images/apple.png",
    "images/black.jpg",
    "images/coffee.jpg",
    "images/iced.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 700,
          child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Image.asset(images[index],fit: BoxFit.cover,height: 300,width: 300,),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){
                        Share.share(images[index]);
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.share,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('Share',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                );
              }
          ),
        )
    ) ;

  }
}
