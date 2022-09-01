import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Review(),
    ));

class Review extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Review:
    () async {
      return true;
    };
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => exit(0),
        ),
        title: Text('Review'),
        centerTitle: true,
        backgroundColor: Color(0xffea6868),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(children: [
          // CircleAvatar(
          //   backgroundImage: null,
          // ),
          //

          SizedBox(
            height: 30.0,
          ),
          Text('President'),
          Container(
            decoration: const BoxDecoration(color: Color(0xffEDD9DB)),
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(27),
                  child: Image.network(
                      "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
              title: Text("Rexford Agyabeng Machu"),
              subtitle: Text('A leader with vision!'),
              // Text(
              //   'Financial Secretary\n Kwakye Jeffery\n Computer Engineering ',
              //   style: TextStyle(
              //     color: Colors.black,
              //     letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text("Financial Secretary"),
          Container(
            decoration: const BoxDecoration(color: Color(0xffEDD9DB)),
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                      "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
              title: Text("Jonathan Edem Akuaku"),
              subtitle: Text('Together,we can do this'),
              // Text(
              //   'Financial Secretary\n Kwakye Jeffery\n Computer Engineering ',
              //   style: TextStyle(
              //     color: Colors.black,
              //     letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text('General Secretary'),
          Container(
            decoration: const BoxDecoration(color: Color(0xffEDD9DB)),
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(27),
                  child: Image.network(
                      "https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
              title: Text("Yuonfaa Joseph"),
              subtitle: Text('Your priorities,our concern!'),
              // Text(
              //   'Financial Secretary\n Kwakye Jeffery\n Computer Engineering ',
              //   style: TextStyle(
              //     color: Colors.black,
              //     letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          content: Text('Are you sure you want to submit?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('Success');
                              },
                              child: Text('Yes'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('No'),
                            )
                          ],
                        ));
              },
            ),
          )
        ]),
      ),
      // body: Container(
      //   child: Column(children: [
      //     CircleAvatar(
      //       backgroundImage: NetworkImage(
      //           'https://9to5google.com/wp-content/uploads/sites/4/2022/02/flutter-windows-promo.jpg?quality=82&strip=all&w=1600'),
      //     )
      //   ]),
      // ),
    );
  }
}
