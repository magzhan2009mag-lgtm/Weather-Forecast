import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
          iconTheme: IconThemeData(color: Colors.black54),
          actions: [IconButton(onPressed: null, icon: Icon(Icons.settings))],
        ),
        body: _builBody(),
      ),
    );
  }

  Widget _builBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _headerImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _weatherDescription(),
                  Divider(),
                  _temperature(),
                  Divider(),
                  _temperatureForecast(),
                  Divider(),
                  _footerRatings(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Image _headerImage() {
    return Image(
      image: NetworkImage(
        'https://www.aaronreedphotography.com/images/xl/aspen-road-autumn-telluride-photography.jpg',
      ),
      fit: BoxFit.cover,
    );
  }
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Tuesday - May 22',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(children: [Icon(Icons.wb_sunny, color: Colors.yellow)]),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('15 C  Clear', style: TextStyle(color: Colors.deepPurple)),
            ],
          ),
          Row(
            children: [
              Text(
                'Zhambyl Oblast, Taraz',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 5,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text('${index + 20} C', style: TextStyle(fontSize: 15)),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _footerRatings() {
  var stars = Row(
    children: [
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15, color: Colors.black),
      Icon(Icons.star, size: 15, color: Colors.black),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Lorem ipsum dolor sit amet   ', style: TextStyle(fontSize: 15)),
      stars,
    ],
  );
}
