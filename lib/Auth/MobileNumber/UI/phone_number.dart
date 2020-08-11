import 'package:delivoostores/Auth/MobileNumber/UI/mobile_input.dart';
import 'package:delivoostores/Auth/login_navigator.dart';
import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//first page that takes phone number as input for verification
class PhoneNumber extends StatelessWidget {
  static const String id = 'phone_number';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //used for scrolling when keyboard pops up
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(),
              Image.asset(
                "images/logos/logo_store.png", //delivoo logo
                height: 130.0,
                width: 99.7,
              ),
              Expanded(
                child: SizedBox(
                  height: 30.0,
                ),
              ),

              //text on page
              Text(AppLocalizations.of(context).bodyText1,
                  style: Theme.of(context).textTheme.bodyText1),
              Text(
                AppLocalizations.of(context).bodyText2,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 87.3,
              ),
              Image.asset(
                "images/logos/seller.png", //footer image
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.0),
              //   child: MobileInput(),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       left: 8.0, right: 16.0, top: 16.0, bottom: 8.0),
              //   child: EntryField(
              //     controller: _controller,
              //     readOnly: false,
              //     label: 'ENTER MAIL',
              //     maxLength: 6,
              //     keyboardType: TextInputType.number,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       left: 8.0, right: 16.0, top: 16.0, bottom: 8.0),
              //   child: EntryField(
              //     controller: _controller,
              //     readOnly: false,
              //     label: 'ENTER PASSWORD',
              //     maxLength: 6,
              //     keyboardType: TextInputType.number,
              //   ),
              // ),
              BottomBar(
                  text: "Continue",
                  onTap: () {
                    Navigator.pushNamed(context, LoginRoutes.registration);
                    // onVerificationDone();
                    // Navigator.pushNamed(context, LoginRoutes.verification);
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => OrderItemAccount(),
                    //     ));
                  }),
              // RaisedButton(
              //   child: Text(
              //     AppLocalizations.of(context).continueText,
              //     style: Theme.of(context).textTheme.button,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30.0),
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, LoginRoutes.registration);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
