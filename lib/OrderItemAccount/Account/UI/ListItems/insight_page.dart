import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoostores/Routes/routes.dart';

class InsightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insight', style: Theme.of(context).textTheme.bodyText1),
        titleSpacing: 0.0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'TODAY',
                style: Theme.of(context).textTheme.headline4.copyWith(
                    fontSize: 15.0, letterSpacing: 1.5, color: kMainColor),
              ),
              SizedBox(
                width: 16.0,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: kMainColor,
              ),
              SizedBox(
                width: 20.0,
              )
            ],
          )
        ],
      ),
      body: Insight(),
    );
  }
}

class Insight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Divider(
          color: kCardBackgroundColor,
          thickness: 8.0,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '32',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    'Orders',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: kTextColor),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '229',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    'Items sold',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: kTextColor),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '\$494.50',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    'Earnings',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: kTextColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: kCardBackgroundColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('EARNING',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontSize: 15.0, letterSpacing: 1.5)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image(
                  image: AssetImage("images/graph.png"),
                  height: 200.0,
                  width: 780.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.walletPage),
                  child: Center(
                    child: Text(
                      'VIEW ALL TRANSACTIONS',
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: kMainColor,
                          letterSpacing: 1.33,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: kCardBackgroundColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('TOP 5 SELLING ITEMS\n',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 11.7,fontWeight: FontWeight.w500,color: kTextColor)),
              Text('Total 112 item sales',
                  style: Theme.of(context).textTheme.headline6),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical:10.0),
          child: Row(
            children: <Widget>[
              SizedBox(width: 5.0),
              Image(
                image: AssetImage("images/veg/Vegetables/onion.png"),
                height: 61.3,
                width: 61.3,
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Fresh Red Onions',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 15.0,fontWeight: FontWeight.w500)),
                  SizedBox(height: 8.0),
                  Text('188 Sales',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              SizedBox(width: 5.0),
              Image(
                image: AssetImage("images/veg/Vegetables/tomato.png"),
                height: 61.3,
                width: 61.3,
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Fresh Red Tomatoes',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 15.0,fontWeight: FontWeight.w500)),
                  SizedBox(height: 8.0),
                  Text('179 Sales',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              SizedBox(width: 5.0),
              Image(
                image: AssetImage("images/veg/Vegetables/lady finger.png"),
                height: 61.3,
                width: 61.3,
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Fresh Ladies Fingers',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 15.0,fontWeight: FontWeight.w500)),
                  SizedBox(height: 8.0),
                  Text('154 Sales',
                      style: Theme.of(context).textTheme.caption.copyWith(fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
