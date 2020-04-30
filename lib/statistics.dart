import 'package:covidflutter/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff473F97),
      appBar: buildAppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 3,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Statistics',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      width: MediaQuery.of(context).size.width,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text(
                                    'My Country',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff0D1333)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Global',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                  )
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Total',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Today',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Yesterday',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonTheme(
                              height: 100,
                              minWidth: 155,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              child: FlatButton(
                                color: Color(0xffFFB259),
                                onPressed: () {},
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Affected',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                        )
                                      )
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '336,851',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20
                                        )
                                      )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonTheme(
                              height: 100,
                              minWidth: 155,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              child: FlatButton(
                                color: Color(0xffFF5959),
                                onPressed: () {},
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Death',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                        )
                                      )
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '9,620',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20
                                        )
                                      )
                                    )
                                  ],
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ButtonTheme(
                              height: 100,
                              minWidth: 98,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              child: FlatButton(
                                color: Color(0xff4CD97B),
                                onPressed: () {},
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Recovered',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                        )
                                      )
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '17,977',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20
                                        )
                                      )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonTheme(
                              height: 100,
                              minWidth: 98,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              child: FlatButton(
                                color: Color(0xff4DB5FF),
                                onPressed: () {},
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Active',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                        )
                                      )
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '301,251',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20
                                        )
                                      )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Expanded(
                            flex: 1,
                            child: ButtonTheme(
                              height: 100,
                              minWidth: 98,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              child: FlatButton(
                                color: Color(0xff9059FF),
                                onPressed: () {},
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Serious',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                        )
                                      )
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '8,702',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20
                                        )
                                      )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}