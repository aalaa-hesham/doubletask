import 'package:flutter/material.dart';
class Singleview extends StatefulWidget {
  const Singleview({super.key});

  @override
  State<Singleview> createState() => _SingleviewState();
}

class _SingleviewState extends State<Singleview> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
         child: Row(
          children: <Widget> [
            for (int i=1; i<20; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: BorderRadius.circular(20),
              ),child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.diamond_rounded,
                color: Colors.greenAccent,),
                Text("product",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white
                ),)
              ],
            ),
            )
        //       SizedBox(width: 10, child: ,),
        //       Text("icon"),
        //       SizedBox(width: 10,),
        //       Text("icon"),
        //       SizedBox(width: 10,),
        //       Text("icon"),
             ],
          ),
         );
  }
}
