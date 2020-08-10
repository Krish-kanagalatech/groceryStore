import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/custom_appbar.dart';
import 'package:delivoostores/Routes/routes.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/material.dart';

class OrderInfo extends StatefulWidget {
  @override
  _OrderInfoState createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(144.0),
        child: CustomAppBar(
          leading: null,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: Hero(
              tag: 'Customer',
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: ListTile(
                  leading: Image.asset(
                    'images/user.png',
                    scale: 2.5,
                    height: 42.3,
                    width: 33.7,
                  ),
                  title: Text(
                    'Samantha Smith',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                  ),
                  subtitle: Text(
                    '20 June, 11:35 am',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 11.7, letterSpacing: 0.06),
                  ),
                  trailing: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.message,
                            color: kMainColor,
                            size: 18.0,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, PageRoutes.chatPage);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.phone,
                            color: kMainColor,
                            size: 18.0,
                          ),
                          onPressed: () {
                            /*.......*/
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Divider(
                color: kCardBackgroundColor,
                thickness: 8.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Text('ITEM(S)',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Color(0xffadadad), fontWeight: FontWeight.bold)),
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Fresh Red Onions',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '1 kg x 1',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Text(
                        '\$ 3.00',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Divider(
                      color: kCardBackgroundColor,
                      thickness: 1.0,
                    ),
                    ListTile(
                      title: Text(
                        'Fresh Cauliflower',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '1 kg x 1',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Text(
                        '\$ 4.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Divider(
                      color: kCardBackgroundColor,
                      thickness: 1.0,
                    ),
                    ListTile(
                      title: Text(
                        'Fresh Red Tomatoes',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '1 kg x 1',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      trailing: Text(
                        '\$ 2.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: kCardBackgroundColor,
                thickness: 8.0,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 21.7),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10.0),
                    Image.asset(
                      'images/custom/ic_instruction.png',
                      scale: 2.5,
                      height: 15.7,
                      width: 16.3,
                    ),
                    SizedBox(width: 18.0),
                    Text(
                      'Keep tomatoes in separate bag please.',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 11.7),
                    )
                  ],
                ),
              ),
              Divider(
                color: kCardBackgroundColor,
                thickness: 8.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Text('PAYMENT INFO',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: kDisabledColor, fontWeight: FontWeight.bold)),
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Sub Total',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        '\$ 10.00',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              Divider(
                color: kCardBackgroundColor,
                thickness: 1.0,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Service Fee',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        '\$ 1.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              Divider(
                color: kCardBackgroundColor,
                thickness: 1.0,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Cash on Delivery',
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$ 11.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              SizedBox(
                height: 7.0,
              ),
              Container(
                height: 180.0,
                color: kCardBackgroundColor,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  color: kWhiteColor,
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 22.0,
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                    title: Text(
                      'George Anderson',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          fontSize: 15.0, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      'Delivery Partner Assigned',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontSize: 11.7, letterSpacing: 0.06),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.navigation,
                        color: kMainColor,
                        size: 17.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, PageRoutes.chatPage);
                      },
                    ),
                  ),
                ),
                BottomBar(
                    text: "Ready to deliver",
                    onTap: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
