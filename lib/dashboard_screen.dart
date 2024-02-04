import 'package:flutter/material.dart';
import 'package:ram_mandir/history.dart';
import 'package:ram_mandir/music_list.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [HistoryPage(), MusicListPage()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Bhajans',
          ),
        ],
        backgroundColor: Color.fromARGB(255, 153, 106, 240),
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 240, 239, 241),
        unselectedItemColor: const Color.fromARGB(255, 192, 192, 191),
        onTap: _onItemTapped,
      ),
    );
  }
}
