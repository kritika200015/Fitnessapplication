import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:fitnessapp/Components/Fitgrid.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/BTS5.jpg'),
          AssetImage('images/BTS2.jpg'),
          AssetImage('images/BTS6.jpg'),
          AssetImage('images/BTS7.jpg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotColor: Colors.purple,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: Text('BLOOM'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.opacity,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.fastfood,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Kim Namjoon'),
              accountEmail: Text('kimnamjoon.bts@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.purple),
            ),
            // body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Stats'),
                leading: Icon(Icons.stacked_bar_chart),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('videos'),
                leading: Icon(Icons.video_collection),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Profile'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.star_rate),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          imageCarousel,
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('FitGrid'),
          ),
          Container(
            height: 300.0,
            child: Fitgrid(),
          )
        ],
      ),
    );
  }
}
