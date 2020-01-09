import 'package:flutter/material.dart';
import 'package:validation/bloc/verify.bloc.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var bloc = Verify();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 130,
                padding: EdgeInsets.only(top: 30),
                child: Center(
                 child: RichText(
                  text: TextSpan(
                    text: 'Welcome to app \n',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF18113B), fontSize: 24.0, fontFamily: 'Montserrat',),
                    children: <TextSpan>[
                      TextSpan(text: 'application developed with flutter', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0, color: Color(0xFF716E81))),
                    ],
                    ),
                  textAlign: TextAlign.center,
                  )
                ),
              ),
              Container(
                height: 150,
                child: Center(
                  child: Image(image: AssetImage('assets/credit-card.png'),)
                ),
              )
            ],
          ),
          
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Enter your social security number',
              textAlign: TextAlign.center,
              style: TextStyle(
              
              ),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextFormField(
              controller: bloc.numberCtrl,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD9D9D9))
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                ),
                hintText: '000.000.000-00',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4)
                )
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF6347FB),
                borderRadius: BorderRadius.circular(4)
              ),
              child: FlatButton(
                child: Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
                onPressed: (){
                  setState(() {
                    
                  });
                },
              ),
            )   
          )
        ],
      ),
    );
  }
}
