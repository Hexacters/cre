import 'dart:ui';
import 'package:cre/models/recommendation.dart';
import 'package:flutter/material.dart';
import '../../../widgets/export_bar.dart';

class HomeMainContent extends StatefulWidget {
  @override
  _HomeMainContentState createState() => _HomeMainContentState();
}

class _HomeMainContentState extends State<HomeMainContent> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: header(title: 'Home Page', context: context),
      bottomNavigationBar: BottomNavigation(index: 1),
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              // page text heading
              Padding(
                padding: EdgeInsets.only(top: 28, left: 15, right: 15),
                child: GestureDetector(
                  child: Text(
                    'Constitutional Rights Education in Schools',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('/container', arguments: 'Hello from home');
                  },
                ),
              ),
              // total counts container
              Container(
                padding: EdgeInsets.only(top: 28, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          '99+',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Total Events',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '200',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Total Schools',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Total Activities',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // about program
              Padding(
                padding: EdgeInsets.only(top: 28, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'About Program',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Hello Hello hi hello my name is hello so this is my hello testing in hello worldHello Hello hi hello my name is hello so this is my hello testing in hello world Hello Hello hi hello my name is hello so this is my hello testing in hello worldHello Hello hi hello my name is hello so this is my hello testing in hello world Hello Hello hi hello my name is hello so this is my hello testing in hello wo',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Objective',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              // box caontainer
              Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 280,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Text(
                              'Hello Hello hi hello my name is hello so this is my hello testing in hello worldHello Hello hi hello my name is hello so this is my hello testing in hello world',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Tab bar with Custom Indicator menu section
              Container(
                height: 30,
                margin: EdgeInsets.only(
                  left: 15,
                  top: 18,
                ),
                child: DefaultTabController(
                  length: 5,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    isScrollable: true,
                    labelColor: Color(0xFF000000),
                    unselectedLabelColor: Colors.grey,
                    labelStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text('Recommend'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('School'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Community'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Admin'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Read Book'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Recommend section image
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        recommendations.length,
                        (int index) => Container(
                              margin: EdgeInsets.only(right: 28.8),
                              width: 333.6,
                              height: 218.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.6),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        recommendations[index].image),
                                  )),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      bottom: 19.2,
                                      left: 19.2,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(4.8),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaY: 19.2, sigmaX: 19.2),
                                          child: Container(
                                            height: 36,
                                            padding: EdgeInsets.only(
                                                left: 16.72, right: 14.4),
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: <Widget>[
                                                Icon(Icons.location_on),
                                                SizedBox(width: 9.52),
                                                Text(
                                                  recommendations[index].name,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ))),
              ),
              // Text heading
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'show all',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              // head
              // Padding(
              //   padding:
              //       EdgeInsets.only(left: 28, bottom: 13, top: 29, right: 28),
              //   child: Text(
              //     'Operation',
              //     style: TextStyle(
              //       fontSize: 18,
              //       fontWeight: FontWeight.w700,
              //     ),
              //   ),
              // ),
              // list columns
              ListView.builder(
                itemCount: 3,
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 57,
                    margin: EdgeInsets.only(bottom: 13),
                    padding: EdgeInsets.only(
                        left: 24, top: 12, bottom: 12, right: 22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(4.0, 4.0),
                        )
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Hello this is row container',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
