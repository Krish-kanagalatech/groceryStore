import 'package:flutter/material.dart';
import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivoostores/Routes/routes.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'register_page';
  final String phoneNumber;

  ProfilePage({this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(fontSize: 16.7),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterForm(phoneNumber),
    );
  }
}

class RegisterForm extends StatefulWidget {
  final String phoneNumber;

  RegisterForm(this.phoneNumber);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Divider(
            color: kCardBackgroundColor,
            thickness: 8.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "FEATURE IMAGE",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: kHintColor),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 99.0,
                      width: 99.0,
                      child: Image.asset('images/layer_1.png'),
                    ),
                    SizedBox(width: 30.0),
                    Icon(
                      Icons.camera_alt,
                      color: kMainColor,
                      size: 19.0,
                    ),
                    SizedBox(width: 14.3),
                    Text("Upload Photo",
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(color: kMainColor)),
                  ],
                ),
                SizedBox(
                  height: 25.3,
                )
              ],
            ),
          ),
          Divider(
            color: kCardBackgroundColor,
            thickness: 8.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'STORE INFO',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                //name textField
                EntryField(
                  textCapitalization: TextCapitalization.words,
                  label: 'STORE NAME',
                  initialValue: 'Silver Leaf Vegetables',
                ),
                //category textField
                EntryField(
                  textCapitalization: TextCapitalization.words,
                  label: 'STORE CATEGORY',
                  initialValue: 'Vegetables & Fruits/Vegetables',
                ),
                //phone textField
                EntryField(
                  label: 'MOBILE NUMBER',
                  initialValue: '+91 9999999999',
                  readOnly: true,
                ),
                //email textField
                EntryField(
                  textCapitalization: TextCapitalization.none,
                  label: 'EMAIL ADDRESS',
                  initialValue: 'storename@email.com',
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ),
          Divider(
            color: kCardBackgroundColor,
            thickness: 8.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'ADDRESS',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                //address textField
                EntryField(
                  textCapitalization: TextCapitalization.words,
                  label: 'STORE ADDRESS',
                  image: 'images/ic_pickup pointact.png',
                  initialValue:
                      '1124, Veggy Garden, Union Market, United States ',
                ),
              ],
            ),
          ),
          Divider(
            color: kCardBackgroundColor,
            thickness: 8.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'STORE TIMINGS',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                Column(
                  children: <Widget>[
                    EntryField(
                      textCapitalization: TextCapitalization.words,
                      initialValue: '8:00 am',
                      label: 'OPENING TIME',
                    ),
                    SizedBox(width: 20.0),
                    EntryField(
                      textCapitalization: TextCapitalization.words,
                      label: 'CLOSING TIME',
                      initialValue: '9:00 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
          //continue button bar
          BottomBar(
              text: "UPDATE INFO",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
