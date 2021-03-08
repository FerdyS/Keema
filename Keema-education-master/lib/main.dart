import 'package:course_app/constants.dart';
import 'package:course_app/details_screen.dart';
import 'package:course_app/details_screen6.dart';
import 'package:course_app/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'details_screen.dart';
import 'details_screen2.dart';
import 'details_screen3.dart';
import 'details_screen4.dart';
import 'details_screen5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course App',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
              child: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset("assets/icons/menu.svg"),
                  Image.asset("assets/images/user.png"),
                ],
              ),
              SizedBox(height: 30),
              Text("Hey Alex,", style: kHeadingextStyle),
              Text("Select a course you want to learn", style: kSubheadingextStyle),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/search.svg"),
                    SizedBox(width: 16),
                    Text(
                      "Search for anything",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFA0A5BD),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Category", style: kTitleTextStyle),
                  Text(
                    "See All",
                    style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Row(
                  children: [
                    Expanded(
                      child: Marketing(),
                    ),

                  SizedBox(width: 30),
                  SizedBox(height: 30),

                  Expanded(
                      child: Ux(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Row(
                  children: [
                    Expanded(
                      child: Photo(),
                    ),

                  SizedBox(width: 30),
                  SizedBox(height: 30),

                  Expanded(
                      child: Business(),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Row(
                  children: [
                    Expanded(
                      child: Music(),
                    ),

                  SizedBox(width: 30),
                  SizedBox(height: 30),

                  Expanded(
                      child: Communication(),
                    ),
                  ],
                ),
              ),
              ], 
          ),
        ),
      ),
    );
  }
}

class Marketing extends StatelessWidget {
  const Marketing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return Page1();
          }));
        },
        child: Container( 
        padding: EdgeInsets.all(20),
                        height: 200,
                        width: 500,
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            categories[0].name.toUpperCase(),
                            style: kTitleTextStyle,
                          ),
                          Text(
                            categories[0].numOfCourses.toString()+' Courses',
                            style: TextStyle(
                              color: kTextColor.withOpacity(1),
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage('assets/images/marketing.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
      ),
    );
  }
}

class Ux extends StatelessWidget {
  const Ux({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
       onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return Page2();
          }));
        },
        child: Container(
      padding: EdgeInsets.all(20),
                      height: 200,
                      width: 500,
                       child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          categories[1].name.toUpperCase(),
                          style: kTitleTextStyle,
                        ),
                        Text(
                          categories[1].numOfCourses.toString()+' Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(1),
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('assets/images/ux_design.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
    ));
  }
}

class Photo extends StatelessWidget {
  const Photo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
       onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return Page3();
          }));
        },
        child: Container(
      padding: EdgeInsets.all(20),
                      height: 200,
                      width:500,
                       child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          categories[2].name.toUpperCase(),
                          style: kTitleTextStyle,
                        ),
                        Text(
                          categories[2].numOfCourses.toString()+' Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(1),
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('assets/images/photography.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
    ));
  }
}

class Business extends StatelessWidget {
  const Business({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
       onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return Page4();
          }));
        },
        child: Container(
      padding: EdgeInsets.all(20),
      
                      height: 200,
                      width:500,
                       child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text(
                          categories[3].name.toUpperCase(),
                          style: kTitleTextStyle,
                        ),
                        Text(
                          categories[3].numOfCourses.toString()+' Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(1),
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('assets/images/business.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
    ));
  }
}

class Music extends StatelessWidget {
  const Music({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
       onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return Page5();
          }));
        },
        child: Container(
      padding: EdgeInsets.all(20),
      
                      height: 200,
                      width:500,
                       child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text(
                          categories[3].name.toUpperCase(),
                          style: kTitleTextStyle,
                        ),
                        Text(
                          categories[3].numOfCourses.toString()+' Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(1),
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('assets/images/music.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
    ));
  }
}

class Communication extends StatelessWidget {
  const Communication({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
       onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return Page6();
          }));
        },
        child: Container(
      padding: EdgeInsets.all(20),
      
                      height: 200,
                      width:500,
                       child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text(
                          categories[3].name.toUpperCase(),
                          style: kTitleTextStyle,
                        ),
                        Text(
                          categories[3].numOfCourses.toString()+' Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(1),
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('assets/images/communication.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
    ));
  }
}

