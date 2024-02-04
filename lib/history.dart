import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HistoryPage extends StatelessWidget {
  String des =
      'The Ayodhya Ram Mandir, also known as Lord Shri Ram Temple, is a Hindu temple located in Ayodhya, Uttar Pradesh, India. The temple has been the center of a long-standing religious and political dispute in India. The new Hindu temple at Ram Janm Bhumi is being built, and Hindus worldwide are excited about its opening. It is set to open on January 22, 2024, and Prime Minister Shri Narendra Modi will inaugurate it. Ayodhya, where the temple is, is considered a sacred place as it is the birthplace of lord Shri Ram. \nOnce they announce the opening date, they will start allowing people for visit temple.';
  String history =
      'The history of the Ayodhya Ram Mandir is centuries-old. The temple is built on the site believed to be the birthplace of Lord Ram, one of the most revered Hindu deities. The temple was demolished by the Mughal emperor Babur in the 16th century and a mosque was built in its place. The mosque, known as the Babri Masjid, stood on the site for centuries until it was demolished in 1992 by Hindu nationalists, triggering widespread violence and communal tensions in the country. \n\nThe Ayodhya dispute has been a contentious issue in Indian politics for decades. The dispute revolved around the ownership of the site where the Babri Masjid stood and whether it was the birthplace of Lord Ram. The dispute was finally settled by the Indian Supreme Court in 2019, which ruled in favor of the construction of a Ram Janmabhoomi temple on the site. \nThe construction of the temple was undertaken by the Shri Ram Janmabhoomi Teerth Kshetra, a trust formed by the Indian government to oversee the construction of the temple.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RAM MANDIR',
          style: TextStyle(
              color: const Color.fromARGB(255, 245, 243, 243),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 153, 106, 240),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Ram Mandir Images',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      'asset/guru.jpg',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      'asset/nivas.jpg',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      'asset/ayodhya.jpg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      'asset/change.jpg',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      'asset/build.jpg',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      'asset/deco.jpg',
                    ),
                  ),
                ],
              ),
              Image.asset(
                'asset/pic.jpg',
                width: double.infinity,
              ),
              SizedBox(height: 20.0),
              Text(
                'Ayodhya Ram Mandir: History',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(height: 20.0),
              Text(
                history,
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              Image.asset(
                'asset/second.jpg',
                width: double.infinity,
              ),
              Text(
                '\nAyodhya Ram Mandir: About',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(height: 20.0),
              Text(
                des,
                style: TextStyle(fontSize: 16.0),
              ),
              Image.asset(
                'asset/first.jpg',
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
