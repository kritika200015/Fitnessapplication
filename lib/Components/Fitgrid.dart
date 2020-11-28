import 'package:flutter/material.dart';

class Fitgrid extends StatefulWidget {
  @override
  _FitgridState createState() => _FitgridState();
}

class _FitgridState extends State<Fitgrid> {
  var Fit_list = [
    {
      "name": "Pedometer",
      "picture": "images/Fitgrid/pedometer.jpg",
      "working": "Counts your steps",
    },
    {
      "name": "BMI Calculator",
      "picture": "images/Fitgrid/bmi.jpg",
      "working": "Check your bmi",
    },
    {
      "name": "diet chart",
      "picture": "images/Fitgrid/diet.jpg",
      "working": "keep a diet check daily",
    },
    {
      "name": "drink remainder",
      "picture": "images/Fitgrid/drink.jpg",
      "working": "Drink more glasses",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: Fit_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_Fit(
            Fit_name: Fit_list[index]['name'],
            Fit_picture: Fit_list[index]['picture'],
            Fit_working: Fit_list[index]['working'],
          );
        });
  }
}

class Single_Fit extends StatelessWidget {
  final Fit_name;
  final Fit_picture;
  final Fit_working;

  Single_Fit({this.Fit_name, this.Fit_picture, this.Fit_working});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Fit_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        Fit_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        Fit_working,
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    Fit_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
