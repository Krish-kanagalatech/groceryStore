import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoostores/Routes/routes.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<Tab> tabs = <Tab>[
    Tab(text: 'SENT FOR DELIVERY'),
    Tab(text: 'NEW ORDERS'),
    Tab(text: 'PAST ORDERS'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              'My Orders',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: TabBar(
                tabs: tabs,
                isScrollable: true,
                labelColor: kMainColor,
                unselectedLabelColor: kLightTextColor,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 24.0),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: tabs.map((Tab tab) {
            return ListView(
              children: <Widget>[
                Divider(
                  color: kCardBackgroundColor,
                  thickness: 8.0,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.orderInfoPage),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    child: ListTile(
                      leading: Image.asset(
                        'images/user.png',
                        scale: 2.5,
                        width: 33.7,
                        height: 42.3,
                      ),
                      title: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Samantha Smith\n\n',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                          ),
                          TextSpan(
                            text: '20 June, 11.35am',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                                    fontSize: 11.7,
                                    letterSpacing: 0.06,
                                    fontWeight: FontWeight.w500),
                          )
                        ]),
                      ),
                      trailing: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: '\$ 20.50\n\n',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                          ),
                          TextSpan(
                            text: 'Cash On Delivery',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(
                                    fontSize: 11.7,
                                    letterSpacing: 0.06,
                                    fontWeight: FontWeight.w500),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: kCardBackgroundColor,
                  thickness: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      Text('Order num 2144142',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text('3 Items',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text('Pending',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Color(0xffffa025),
                              fontWeight: FontWeight.bold,
                              fontSize: 11.7,
                              letterSpacing: 0.06)),
                    ],
                  ),
                ),
                Divider(
                  color: kCardBackgroundColor,
                  thickness: 8.0,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
