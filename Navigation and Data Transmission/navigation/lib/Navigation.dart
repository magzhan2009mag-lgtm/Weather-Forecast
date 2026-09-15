import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FirstHome()));
}

class FirstHome extends StatelessWidget {
  const FirstHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First home'), centerTitle: true),
      body: Center(
        child: FilledButton(
          onPressed: () {
            User user = User(name: 'Magzhan', age: 17);
            Route route = MaterialPageRoute(
              builder: (context) => SecondHome(user: user),
            );
            Navigator.push(context, route);
          },
          child: Text('Second home'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  final User user;

  const SecondHome({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${user.name} - ${user.age}"),
        centerTitle: true,
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
}
