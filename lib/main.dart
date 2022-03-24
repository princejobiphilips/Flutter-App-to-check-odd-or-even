import 'package:flutter/material.dart';

void main()=> runApp( Add() );

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {

  TextEditingController num=TextEditingController();

  String _result="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text("Even or Odd"),
    ),

    body:
      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
          children: [
       SizedBox(height: 20,),
        TextField(
          controller: num,
          decoration: InputDecoration(
          prefixIcon: Icon(Icons.numbers),
          labelText: "Number",
          hintText: "Number",
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
            )
        ),
      ),
        SizedBox(height: 20,),

        SizedBox(

        height: 60,
        width: double.infinity,

        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.amber)
                    )),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.indigo
                )
            ),
            onPressed: (){
              var getNum=int.parse(num.text);

              setState(() {
                _result = (getNum%2==0) ? "Even": "Odd";
              });
            },
            child: Text("Check",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            )),
      ),
      SizedBox(height: 20.0,),
            Text(_result.toString(),style: TextStyle(fontSize: 20),),
    ],
    ),
    ),
    )
        ),
    );
  }
}