import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }
}

// Cv appBar
PreferredSizeWidget _getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 126, 131, 107),
    centerTitle: true,
    title: Text(
      'Hosein Ghasemizade',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w700, fontSize: 28),
    ),
  );
}

// Body Cv App
Widget _getMainBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        _getHeader(),
      ],
    ),
  );
}

Widget _getHeader() {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      CircleAvatar(
        backgroundImage: AssetImage('Images/HoseinAvatar.jpg'),
        radius: 70,
      ),
      SizedBox(height: 15),
      Text(
        'I am Hossein, a junior programmer',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 10),
      Text(
        'Interested in mobile and front-end programming',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
      ),
      SizedBox(height: 15),
      _getRowIcons(),
      SizedBox(
        height: 20,
      ),
      _experience(),
      SizedBox(height: 15),
      _getSkillLables(),
      SizedBox(
        height: 20,
      ),
      _getResume(),
    ],
  );
}

// Socialmedia Icon
Widget _getRowIcons() {
  return Wrap(
    alignment: WrapAlignment.center,
    children: [
      IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.linkedin,
          color: Color.fromARGB(230, 104, 108, 89),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.github),
        color: Color.fromARGB(230, 104, 108, 89),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.telegram),
        color: Color.fromARGB(230, 104, 108, 89),
      ),
      IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.instagramSquare),
        color: Color.fromARGB(230, 104, 108, 89),
      ),
    ],
  );
}

Widget _getResume() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    width: double.infinity,
    color: Color.fromARGB(100, 104, 108, 89),
    child: Column(
      children: [
        Text(
          'My work history',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity),
            Text(''),
          ],
        ),
      ],
    ),
  );
}

Widget _experience() {
  return Text(
    'Experience',
    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
  );
}

// Experience Cards
Widget _getSkillLables() {
  var list = ['flutter', 'dart', 'cpp', 'csharp', 'html', 'css'];
  return Wrap(
    //spacing: ,
    runSpacing: 16,
    alignment: WrapAlignment.center,
    children: [
      for (var skill in list)
        Card(
          elevation: 5,
          shadowColor: Color.fromARGB(255, 104, 108, 89),
          child: Column(
            children: [
              Container(
                height: 80.0,
                width: 60.0,
                child: Image(
                  image: AssetImage('Images/$skill.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('$skill'),
              ),
            ],
          ),
        ),
    ],
  );
}
