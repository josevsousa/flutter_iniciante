import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Ok',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home ok Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // vars
  int _counter = 0;
  int _index = 0;
  RandomColor randomColor = RandomColor(); 

  // functions
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color color = randomColor.randomColor();
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:40),
              child: Container(
                child: Text('Meu atalho 1')
              )
            ),
          
            Container(
              child: Text('Meu atalho 2')
            ),
            Container(
              child: Text('Meu atalho 3')
            ),
          ],
        )
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Text('icon 1'),
            activeIcon: Icon(Icons.accessibility, color: Colors.red)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print),
            title: Text('icon 1'),
            activeIcon: Icon(Icons.print, color: Colors.red)
          )
        ]
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/img/a.png'),
            ),
            Text(
              'You have pushed times:',
              style: TextStyle(
                fontFamily: 'ChelseaMarket',
                fontSize: 20
              ),
            ),
            Text(
              '$_counter',
              // style: Theme.of(context).textTheme.headline4,
              style: TextStyle(
                color: color,
                fontSize: 20
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
