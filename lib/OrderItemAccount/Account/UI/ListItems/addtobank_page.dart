import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:delivoostores/Themes/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoostores/Routes/routes.dart';

class AddToBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send To Bank',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.w500)),
        titleSpacing: 0.0,
      ),
      body: Add(),
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'AVAILABLE BALANCE',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              letterSpacing: 0.67,
                              color: kHintColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        '\$ 748.50',
                        style: listTitleTextStyle.copyWith(
                            fontSize: 35.0,
                            color: kMainColor,
                            letterSpacing: 0.18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: kCardBackgroundColor,
              thickness: 8.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "BANK INFO",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.67,
                            color: kHintColor),
                      ),
                    ),
                  ),
                  EntryField(
                    textCapitalization: TextCapitalization.words,
                    //controller: _nameController,
                    label: 'ACCOUNT HOLDER NAME',
                  ),
                  EntryField(
                    textCapitalization: TextCapitalization.words,
                    //controller: _categoryController,
                    label: 'BANK NAME',
                  ),
                  EntryField(
                    textCapitalization: TextCapitalization.none,
                    //controller: _emailController,
                    label: 'BRANCH CODE',
                  ),
                  EntryField(
                    textCapitalization: TextCapitalization.none,
                    //controller: _emailController,
                    label: 'ACCOUNT NUMBER',
                  ),
                ],
              ),
            ),
            Divider(
              color: kCardBackgroundColor,
              thickness: 8.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: EntryField(
                textCapitalization: TextCapitalization.words,
                //controller: _addressController,
                label: 'ENTER AMOUNT TO TRANSFER',
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
            text: "Send To Bank",
            onTap: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}
