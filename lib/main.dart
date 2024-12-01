import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List ranImg = [1,2,3,4,5,6];
  int img=1;
  int img2=2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: IconButton(
                    icon: Image.asset('images/dice$img.png'),
                    onPressed: () {
                      setState(() {
                        img = ranImg[Random().nextInt(ranImg.length)];
                        img2 = ranImg[Random().nextInt(ranImg.length)];
                      });
                      
                  },
                  ),
                )
                ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  icon: Image.asset('images/dice$img2.png'),
                  onPressed: (){
                    setState(() {
                        img = ranImg[Random().nextInt(ranImg.length)];
                        img2 = ranImg[Random().nextInt(ranImg.length)];
                        
                      },
                    );
                  },
                  ),
              )
              )
          ],
        ),
    );
  }
}
