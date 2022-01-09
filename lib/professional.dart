import 'package:flutter/material.dart';

class profess extends StatelessWidget {
  const profess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        
        children: [
          Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),
          Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),
          Container(
            child: Image.network("https://image.freepik.com/free-vector/minimalist-cv-template_23-2148916161.jpg"),
          ),
        ],
        ),
      ),
      
    );
  }
}