import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BelajarGetData extends StatelessWidget {
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse('https://api.covid19api.com/summary'));
    return json.decode(result.body)['Countries'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Covid Di tiap Negara'),
        backgroundColor: Colors.green[200],
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green[50]),
                        child: Column(
                          children: [
                            Text(
                              snapshot.data[index]['Country'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'TotalConfirmed',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(snapshot.data[index]['TotalConfirmed'].toString()),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'TotalDeaths',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Text(snapshot.data[index]['TotalDeaths'].toString()),
                                  ],
                                )
                              ],
                            )
                          ],
                        ));
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
