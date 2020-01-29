import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StockPage extends StatefulWidget {
  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stock Tracker"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(20, 94, 26, 1),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/graph');
            },
            icon: Icon(Icons.grade),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.tableEdit),
                "Bajaj Finance",
                "Title: Flying wings",
                "000",
                "000",
                "000",
                "4421",
                "LTP",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.calendar, color: Colors.blue),
                "Nestle India",
                "New",
                "000",
                "000",
                "000",
                "15869",
                "New",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.history),
                "ITC",
                "EUR",
                "000",
                "000",
                "000",
                "236.0",
                "New",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.chat),
                "Infosys",
                "EUR",
                "000",
                "000",
                "000",
                "789.45",
                "New",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.messageAlert),
                "Larsen & Toubro",
                "EUR",
                "000",
                "000",
                "000",
                "1365.45",
                "New",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.messageAlert),
                "Tata Steel",
                "EUR",
                "000",
                "000",
                "000",
                "1365.45",
                "New",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.messageAlert),
                "Tech Mahindra",
                "EUR",
                "000",
                "000",
                "000",
                "1365.45",
                "New",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.messageAlert),
                "HCL Tech",
                "EUR",
                "000",
                "000",
                "000",
                "1365.45",
                "New",
                "LTP",
                context),
            SizedBox(
              height: 13.0,
            ),
            _dashboardSecondComponent(
                Color.fromRGBO(64, 64, 64, 0.5),
                Icon(MdiIcons.messageAlert),
                "HDFC Bank",
                "EUR",
                "000",
                "000",
                "000",
                "1365.45",
                "New",
                "LTP",
                context),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(44, 44, 44, 1),
    );
  }

  Widget _dashboardSecondComponent(
      Color color,
      Icon icon,
      String cardName,
      String currencyCode,
      String totalCount,
      String readCount,
      String unreadCount,
      String amount,
      String amount1,
      String subtitle,
      BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width - 30.0,
          decoration: BoxDecoration(
            color: color.withAlpha(220),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.elliptical(90.0, 110.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                  ),
                ),
              ),
              Positioned(
                top: 20.0,
                left: 12.0,
                child: Container(
                  width: 60,
                  height: 60,
                  child: icon,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                left: 90.0,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cardName,
                        style: TextStyle(
                          fontFamily: "OpenSens",
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                totalCount,
                                style: TextStyle(
                                    fontFamily: "OpenSens",
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Low",
                                style: TextStyle(
                                    fontFamily: "OpenSens",
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                readCount,
                                style: TextStyle(
                                    fontFamily: "OpenSens",
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "High",
                                style: TextStyle(
                                  fontFamily: "OpenSens",
                                  color: Colors.white.withOpacity(0.8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                unreadCount,
                                style: TextStyle(
                                    fontFamily: "OpenSens",
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "52 week",
                                style: TextStyle(
                                    fontFamily: "OpenSens",
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 25.0,
                right: 20.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      amount,
                      style: TextStyle(
                        fontFamily: "OpenSens",
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: "OpenSens",
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
