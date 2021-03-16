import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('BizCard'), backgroundColor: Colors.greenAccent),
      body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [_getCard(), _getAvatar()],
          )),
    );
  }

  Container _getCard() {
    return Container(
      margin: EdgeInsets.all(50.0),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.greenAccent, borderRadius: BorderRadius.circular(14.6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Alejandro Cardenas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          Text('Git: AlejandroCardenas13'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text(' A: alejocardenas14@gmail.com')
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.lightBlueAccent),
          image: DecorationImage(
              image: NetworkImage('https://picsum.photos/200/300'),
              fit: BoxFit.cover)),
    );
  }
}
