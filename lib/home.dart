import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: buildContentHeader(),
          ),
          Flexible(
            flex: 3,
            child: buildContent(context),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: Color(0xff473F97),
      title: IconButton(
        onPressed: () => {},
        icon: SvgPicture.asset('assets/images/menu.svg'),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset('assets/images/bell.svg'),
          ),
        )
      ],
    );
  }

  Container buildContentHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 26.0),
      decoration: BoxDecoration(
        color: Color(0xff473F97),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50)
        )
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Covid-19',
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 24),
            alignment: Alignment.topLeft,
            child: Text(
              'Are you feeling sick?',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 14),
            alignment: Alignment.topLeft,
            child: Text(
              'If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
                fontFamily: 'Nunito Sans',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 24),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 24),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Color(0xffFF4D58),
                    onPressed: () => {},
                    child: Row(
                      children: <Widget>[
                        SvgPicture.asset('assets/images/phone.svg'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Call Now',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color(0xff4D79FF),
                  onPressed: () => {},
                  child: Row(
                    children: <Widget>[
                      SvgPicture.asset('assets/images/message-circle.svg'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Send SMS',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 26, right: 26),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'Prevention',
              style: TextStyle(
                fontSize: 22.0,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset('assets/images/jaga_jarak.svg'),
                      Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          'Avoid close contact',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset('assets/images/basuh_lengeun.svg'),
                      Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          'Clean your\nhands often',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset('assets/images/make_masker.svg'),
                      Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          'Wear a\nfacemask',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                          ),
                        ),
                      )
                    ],
                  ),
                ),  
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 115,
                margin: EdgeInsets.only(top: 40),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    colors: [const Color(0xFFAEA1E5), const Color(0xFF56549E)],
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 20,
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/awewe_sehat.svg',
                      height: 130,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Do your own test!',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            'Follow the instructions to\ndo your own test.',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}