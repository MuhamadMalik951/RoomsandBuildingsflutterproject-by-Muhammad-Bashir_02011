import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to the University',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UniversityHomePage(),
    );
  }
}

class UniversityHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the University'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepartmentPage('Department of Software Engineering')),
                );
              },
              child: Text('Department of Software Engineering'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepartmentPage('Department of Computer Science')),
                );
              },
              child: Text('Department of Computer Science'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepartmentPage('Department of Zoology')),
                );
              },
              child: Text('Department of Zoology'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepartmentPage('Department of Physics')),
                );
              },
              child: Text('Department of Physics'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepartmentPage('Department of Chemistry')),
                );
              },
              child: Text('Department of Chemistry'),
            ),
          ],
        ),
      ),
    );
  }
}

class DepartmentPage extends StatelessWidget {
  final String departmentName;

  DepartmentPage(this.departmentName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(departmentName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClassPage(departmentName, 'Morning')),
                );
              },
              child: Text('Morning Classes'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClassPage(departmentName, 'Evening')),
                );
              },
              child: Text('Evening Classes'),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassPage extends StatelessWidget {
  final String departmentName;
  final String timeOfDay;

  ClassPage(this.departmentName, this.timeOfDay);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$departmentName $timeOfDay Classes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: Text('Class 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Class 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Class 3'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Class 4'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Class 5'),
            ),
          ],
        ),
      ),
    );
  }
}
