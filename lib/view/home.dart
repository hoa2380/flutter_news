import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('MENU',
          style: TextStyle(color: Colors.white) ,),
      ),
      endDrawer: Drawer(
        child: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                 width: 80,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("asset/image/logo.png"),
                     fit: BoxFit.cover
                   )
                 ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Flexible(
                  child: Text(
                    'CÔNG TY TNHH TƯ VẤN ĐẦU TƯ SINH THÁI VIỆT VIET ELO',
                    style:TextStyle(fontSize: 20, color: Colors.green, ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 28,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Text('Đăng nhập',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    Text('|',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    Text('Ghi danh',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height:150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('asset/image/logo.png', fit: BoxFit.cover),
                  ClipRRect( // Clip it cleanly.
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 50,
                            color: Colors.lightGreen,
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sứ mệnh : ',
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.underline
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(' "Mang niềm tin đến doanh nghiệp và người tiều dùng".',
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GIỚI THIỆU',
                  style:TextStyle(fontSize: 25, color: Colors.blueAccent, fontWeight: FontWeight.bold ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
