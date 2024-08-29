import 'package:flutter/material.dart';

import '../components/swappingalarmPhotos.dart';

class AlarmScreen extends StatefulWidget {
  final numStars = 5;

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SwappingAlarmPhotos(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "C2 Analog Clock",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Spacer(),
              Text(
                "\$542",
                style: TextStyle(
                    color: Color(0xFFF3646C), fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              for (int i = 0; i < 5; i++)
                Icon(Icons.star,
                    size: 15, color: i < 4 ? Colors.orange : Colors.grey),
              SizedBox(
                width: 10,
              ),
              Text(
                "4/5 (12)",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A classically designed analog clock that would add ",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "to the decor of your house , Analog clock Hour, ",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "minutes and seconds hands ",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Type",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCADB1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Analog",
                          style: TextStyle(
                              color: Color(0xFFF3646C), fontSize: 17)),
                    ),
                  )
                ],
              ),
SizedBox(width: 40,),
              Column(
                children: [
                  Text(
                    "Material",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFFCADB1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Plastic",
                          style: TextStyle(
                              color: Color(0xFFF3646C), fontSize: 17)),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 60,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: MaterialButton(onPressed: (){},child: Text("Add to cart",style: TextStyle( color: Colors.white,fontSize: 20)),))

        ],
      ),
    );
  }
}
