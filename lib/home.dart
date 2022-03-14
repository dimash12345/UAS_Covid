import 'package:covid19/maindrawer.dart';
import 'package:covid19/menu.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[100],
        centerTitle: true,
        title: Text(
          'COVID-19 VIRUS TRACKER',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        child: maindrawer(),
      ),
      body: Container(
        child: ListView(children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green[50]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CURRENT STATS ',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'REPORTED',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'CASES',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/virus 2.png'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '4.17.676',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            width: 0,
                            decoration: BoxDecoration(border: Border.all(), color: Colors.black),
                          ),
                          Column(
                            children: [
                              Text(
                                'REPORTED',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'DEATHS',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset('assets/images/poison 2.png'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '18.605',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green[50]),
                  child: Column(
                    children: [
                      Text('Corona Virus Measures To Take', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('stay aware of the latest measures to'),
                      Text('prevent COVID-19 outbreak'),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/Group.png',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Wear a facemask',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.blue[200]),
                                    child: Text('See more ->'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('You should always wear a'),
                              Text('facemask when you are around'),
                              Text('other people')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(
              top: 18,
              left: 10,
            ),
            height: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue[100]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/Group 3.png'),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 80,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Italy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' - 74.386 infected ceses reported',
                          ),
                          Text(
                            ' - 74.386 infected ceses reported',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/Group 14.png'),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: menu(),
    );
  }
}
