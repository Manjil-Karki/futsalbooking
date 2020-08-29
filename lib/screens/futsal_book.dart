import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutsalBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> today = [
      statusBox(true,'7-8'),
      statusBox(false,'8-10'),
      statusBox(false,'11-1'),
      statusBox(true,'1-2'),
      statusBox(false,'2-4'),
      statusBox(false,'4-5'),
      statusBox(true, '5-7'),
      statusBox(false, '7-8')];

    List<Widget> tommorow = [
      statusBox(true,'7-8'),
      statusBox(true,'8-10'),
      statusBox(true,'11-1'),
      statusBox(true,'1-2'),
      statusBox(false,'2-4'),
      statusBox(false,'4-5'),
      statusBox(true, '5-7'),
      statusBox(false, '7-8')];

    return Scaffold(
      appBar: AppBar( //appbar tysai halya ho popup halne vaye nikalda hunxa hola
        title: Text('Bookings'),
        backgroundColor: Colors.green.shade400,
      ),
      body:Container(
        padding: EdgeInsets.fromLTRB(10.0, 5.0 , 10.0, 0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0,),
            openingRow('April 2nd Week'),
            SizedBox(height: 25.0,),
            availableStatus('Sunday',today),
            availableStatus('Monday',tommorow),
            availableStatus('Tuesday',today)
          ],
        ),
      ),
    );
  }
}

Widget openingRow(d)
{
  String date = d;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text('Openings',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
      Text(date,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
    ],
  );
}

Widget availableStatus(d,t)
{
  List <Widget> timeList = t;
  String day = d;
  return Column(
    children: <Widget>[
      Text(
        day,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.0,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
//          children: <Widget>[
//          Status_Box(true,'7-8'),
//          Status_Box(false,'8-10'),
//          Status_Box(false,'11-1'),
//          Status_Box(true,'1-2'),
//          Status_Box(false,'2-4'),
//          Status_Box(false,'4-5'),
//          Status_Box(true, '5-7'),
//          Status_Box(false, '7-8')
//          ],
        children: timeList,
        ),
      ),
      SizedBox(height: 10.0,),
    ],
  );
}

Widget statusBox(isBooked,time)
{
  Color statusColor = isBooked ? Colors.green[300] : Colors.red ;
  String bookingTime = time;
  return Stack(
    children:<Widget>[
      Container(
      margin: EdgeInsets.all(10.0),
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: statusColor,
      ),
        child: Align(
            child: Text(bookingTime),
            alignment: Alignment.center,
        ),
    ),

  ]
  );

}