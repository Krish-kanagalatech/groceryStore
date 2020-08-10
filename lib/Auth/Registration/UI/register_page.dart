import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../login_navigator.dart';

//register page for registration of a new user
class RegisterPage extends StatelessWidget {
  static const String id = 'register_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Register',
          style: TextStyle(fontSize: 16.7),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterForm(),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: <Widget>[
            //name textField
            EntryField(
              textCapitalization: TextCapitalization.words,
              controller: _nameController,
              label: 'FULL NAME',
              image: 'images/icons/ic_name.png',
            ),

            //email textField
            EntryField(
              textCapitalization: TextCapitalization.none,
              controller: _emailController,
              label: 'EMAIL ADDRESS',
              image: 'images/icons/ic_mail.png',
              keyboardType: TextInputType.emailAddress,
            ),

            //phone textField
            EntryField(
              label: 'MOBILE NUMBER',
              image: 'images/icons/ic_phone.png',
             // initialValue: widget.phoneNumber,
              readOnly: true,
            ),

            Text(
              "We'll send verification code on above given number.",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),

      //continue button bar
      BottomBar(
          text: "Continue",
          onTap: () {
            Navigator.pushNamed(context, LoginRoutes.verification);
          })
    ],
        );
  }
}
