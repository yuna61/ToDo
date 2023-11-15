import 'package:flutter/material.dart';
import 'package:practice/screen/to_do_screen.dart';
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    todoApp(),
    Container(color: Colors.white54),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Todo'
        ),
      ),
      body:pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'To-Do',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Another',
          ),
        ],
      ),
    );
  }
}


