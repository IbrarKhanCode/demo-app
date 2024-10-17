import 'package:flutter/material.dart';
import 'package:share/share.dart';

class TabThree extends StatefulWidget {
  const TabThree({super.key});

  @override
  State<TabThree> createState() => _TabThreeState();
}

class _TabThreeState extends State<TabThree> {

  List images = [
    "images/one.png",
    "images/two.png",
    "images/three.jpg",
    "images/four.png",
  ];

  List text = [
    "Nature refers to the natural world encompassing all living organisms,"
        " ecosystems, and physical elements that exist independently of human activities."
        " It includes plants, animals, mountains, rivers, oceans, forests,"
        " and the atmosphere, functioning through complex interconnections"
        " and processes like the water cycle, food chains, and natural selection.",

    "Nature sustains life on Earth, providing vital resources like air, water, and food,"
        " as well as regulating climate and biodiversity. It offers beauty, inspiration,"
        " and a sense of balance, but faces challenges from human impact such as pollution,"
        " deforestation, and climate change."
        " Conservation efforts aim to protect and preserve nature's balance for future generations.",

    "The Moon is Earth's only natural satellite and the fifth-largest moon in the solar system. It orbits Earth at an average distance of about 384,400 kilometers (238,855 miles). The Moon is believed to have formed around 4.5 billion years ago,"
        " likely as a result of a massive collision between Earth and a Mars-sized object.",

    "In Islam, Allah is the Arabic word for God and refers to the one, "
        "supreme being who is the Creator, Sustainer, and Ruler of the universe."
        " Allah is considered the only deity, having no partners, children, or equals,"
        " and is omnipotent, omniscient, and merciful. The concept of Allah in Islam"
        " emphasizes monotheism (Tawhid), meaning the belief in the absolute oneness of God."

        "Muhammad (c. 570 CE – 632 CE) is regarded by Muslims as the final prophet in"
        " a long line of prophets sent by Allah to guide humanity. Born in Mecca, "
        "in present-day Saudi Arabia, "
        "Muhammad is considered the seal of the Prophets (Khatam an-Nabiyyin), meaning that after him, no more prophets would come."
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
                    SizedBox(height: 30,),
                    Text(text[index],style: TextStyle(color: Colors.black.withOpacity(0.8)),),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed: (){
                        Share.share(images[index]);
                        Share.share(text[index]);
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
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
    );
  }
}
