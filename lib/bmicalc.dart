import 'package:flutter/material.dart';

class Bmicalc extends StatefulWidget {
  const Bmicalc({Key? key}) : super(key: key);

  @override
  State<Bmicalc> createState() => _BmicalcState();
}

class _BmicalcState extends State<Bmicalc> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.black,title: Text(style: TextStyle(),'Bmicalculator'),),
      backgroundColor: Colors.white,
      body:Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(
          padding: const EdgeInsets.only(left: 600.0,right: 600.0),
          child: TextField(
            controller: height,
            decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'height',
    ),
    ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 600.0,right: 600.0),
          child: TextField(
            controller: weight,
            decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'weight',
    ),
    ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){calculate();}, child: Text('calculate')),
        ),
        TextButton(onPressed: () {
          setState((){
    calculate();
    });
    },
       child: Text('Result')),
     Text(result.toString())
        ],) ,
    );
  }
}
