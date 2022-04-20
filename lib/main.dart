import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(
            margin:const EdgeInsets.only(top: 20),
            height: 300,
            width: 300,
            decoration:const BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image:AssetImage(
                  'assets/image/vegetable.jpeg'
                ),
                fit: BoxFit.cover, 
                ),
            ),
          )
            ]
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Tomato',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 140,height: 150,),
              Text('Apple',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Carrot',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 140),
              Text('Brinjal',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Cabbage',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 130,height: 150,),
              Text('Beet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          )
        ],
      ),
    );
  }
}