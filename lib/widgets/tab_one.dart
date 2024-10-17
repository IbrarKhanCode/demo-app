import 'package:flutter/material.dart';
import 'package:share/share.dart';

class TabOne extends StatefulWidget {
  const TabOne({super.key});

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {

  List text = [
    "The sun was setting behind the hills,"
        " casting a golden hue across the horizon. "
        "Birds chirped softly, preparing for the night,"
        " while a gentle breeze rustled through the trees. "
        "In the distance, a river shimmered as it meandered through the valley,"
        " reflecting the vibrant colors of the sky."
        " A lone figure stood by the water's edge, lost in thought,"
        " as the world around them slowly transitioned from day to night, "
        "peaceful and serene.",

    "The old wooden bridge creaked with every step, "
        "its weathered planks worn smooth by time and countless travelers. Below,"
        " the river surged in a steady current,"
        " the water glistening under the midday sun. "
        "Wildflowers grew along the banks,"
        " their vibrant colors swaying in the wind. In the distance,"
        " the mountains stood tall and silent,"
        " their peaks dusted with the last remnants of snow. "
        "A flock of birds suddenly took flight from the treetops,"
        " their wings beating in perfect harmony,"
        " as if answering some silent call of the wilderness. The air was crisp,"
        " filled with the scent of pine and adventure.",

    "Raindrops began to fall, lightly tapping against the windowpane, "
        "creating a soothing rhythm. The streets, once bustling with activity,"
        " now lay quiet under a misty veil. "
        "A soft glow from the streetlights reflected on the wet pavement,"
        " casting long shadows that danced in the puddles. Inside the small café, "
        "the smell of freshly brewed coffee filled the air, "
        "mingling with the sound of distant jazz playing softly."
        " A couple sat at the corner table, engaged in quiet conversation,"
        " while the world outside continued to slow down,"
        " wrapped in the gentle embrace of the rain.",

    "The city buzzed with life as neon signs flickered to life, "
        "casting colorful reflections on the rain-slicked streets. "
        "People hurried past each other, "
        "their faces illuminated by the glow of shop windows and the "
        "occasional flash of headlights. Somewhere,"
        " the distant hum of a subway train rumbled beneath the ground, "
        "adding to the steady pulse of the urban jungle. Above,"
        " skyscrapers reached into the night sky,"
        " their windows like thousands of tiny stars,"
        " each one holding its own story. Amid the chaos, "
        "a street performer strummed a guitar on the corner, "
        "his soulful tune momentarily slowing the pace of the rushing world around him.",

    "A cool breeze swept across the open field,"
        " causing the tall grass to sway like waves in the ocean."
        " The horizon stretched endlessly,"
        " dotted with a few distant trees that stood like sentinels against the fading light. "
        "In the middle of the field, an old barn, weathered and worn by years of neglect, "
        "sat in quiet solitude. Its red paint, once bright and bold, "
        "had chipped away to reveal the gray wood beneath."
        " As the sky turned shades of pink and purple, the first stars began to twinkle above,"
        " casting a serene stillness over the landscape,"
        " as if time itself had paused for a moment of reflection.",
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 700,
        child: ListView.builder(
          itemCount: text.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
            return Column(
              children: [
                Text(
                  text[index],style: TextStyle(color: Colors.black.withOpacity(0.8)),),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    Share.share(text[index]);
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
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
                SizedBox(height: 20,)
              ],
            );
        }
        ),
      )
    );

  }
}
