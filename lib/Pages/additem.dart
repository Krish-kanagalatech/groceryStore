import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoostores/Routes/routes.dart';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Add Product', style: Theme.of(context).textTheme.bodyText1),
        titleSpacing: 0.0,
      ),
      body: Add(),
    );
  }
}

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  int addedFields = 0;
  List<bool> listOfAddedField = [false];
  String value = 'category 1';

  List<String> categoryList = ['category 1', 'category 2'];

  List<String> subCategoryList = ['sub category 1', 'sub category 2'];
  String valueSub = 'sub category 1';

  bool mainDropDown = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Divider(
              color: kCardBackgroundColor,
              thickness: 6.7,
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
                        "ITEM IMAGE",
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
                        color: kCardBackgroundColor,
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
                      'PRODUCT INFO',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: kHintColor),
                    ),
                  ),
                  EntryField(
                    textCapitalization: TextCapitalization.words,
                    label: 'PRODUCT TITLE',
                    hint: 'Enter Item Name',
                  ),
                  // EntryField(
                  //   textCapitalization: TextCapitalization.words,
                  //   label: 'PRODUCT CATEGORY',
                  //   hint: 'Select Item Category',
                  // ),
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
                      'PRODUCT DETAILS',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: kHintColor),
                    ),
                  ),
                  EntryField(
                    textCapitalization: TextCapitalization.words,
                    label: 'ENTER MINIMUM QUALITY',
                    hint: 'Enter Minimum Quantity',
                    keyboardType: TextInputType.number,
                  ),
                  EntryField(
                    textCapitalization: TextCapitalization.words,
                    label: 'ENTER MAXIMUM QUALITY',
                    hint: 'Enter Maximum Quantity',
                    keyboardType: TextInputType.number,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Select category : "),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: 5),
                          child: DropdownButton(
                            value: value,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: kMainColor,
                            ),
                            iconSize: 24.0,
                            elevation: 16,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            underline: Container(
                              height: 0,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                value = newValue;
                              });
                            },
                            items: categoryList
                                .map<DropdownMenuItem<String>>((String address) {
                              return DropdownMenuItem<String>(
                                value: address,
                                child: Text(
                                  address,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Select sub category : "),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: 5),
                          child: DropdownButton(
                            value: valueSub,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: kMainColor,
                            ),
                            iconSize: 24.0,
                            elevation: 16,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            underline: Container(
                              height: 0,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                valueSub = newValue;
                              });
                            },
                            items: subCategoryList
                                .map<DropdownMenuItem<String>>((String address) {
                              return DropdownMenuItem<String>(
                                value: address,
                                child: Text(
                                  address,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              mainDropDown = !mainDropDown;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text("Product 1"),
                              ),
                              Container(
                                child: Icon(
                                  mainDropDown
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                ),
                              ),
                            ],
                          ),
                        ),
                        mainDropDown
                            ? EntryField(
                                textCapitalization: TextCapitalization.words,
                                label: 'PRODUCT PRICE',
                                hint: 'Enter Price',
                              )
                            : Container(),
                        mainDropDown
                            ? EntryField(
                                textCapitalization: TextCapitalization.words,
                                label: 'PRODUCT SALE PRICE',
                                hint: 'Enter Sale Price',
                              )
                            : Container(),
                        mainDropDown
                            ? EntryField(
                                textCapitalization: TextCapitalization.words,
                                label: 'QUANTITY',
                                hint: 'Enter Quantity',
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  for (int i = 0; i < addedFields; i++)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                listOfAddedField[i] = !listOfAddedField[i];
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("Product ${i + 2}"),
                                ),
                                Container(
                                  child: Icon(
                                    listOfAddedField[i]
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          listOfAddedField[i]
                              ? EntryField(
                                  textCapitalization: TextCapitalization.words,
                                  label: 'PRODUCT PRICE',
                                  hint: 'Enter Price',
                                )
                              : Container(),
                          listOfAddedField[i]
                              ? EntryField(
                                  textCapitalization: TextCapitalization.words,
                                  label: 'PRODUCT SALE PRICE',
                                  hint: 'Enter Sale Price',
                                )
                              : Container(),
                          listOfAddedField[i]
                              ? EntryField(
                                  textCapitalization: TextCapitalization.words,
                                  label: 'QUANTITY',
                                  hint: 'Enter Quantity',
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        addedFields += 1;
                        listOfAddedField.insert(addedFields, false);
                      });
                    },
                    child: Text("+ ADD MORE OPTIONS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 10,
                            letterSpacing: 0.5)),
                  ),
                  SizedBox(
                    height: 80.0,
                  )
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
            text: "Add Product",
            onTap: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}
