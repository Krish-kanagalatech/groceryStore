import 'package:delivoostores/Auth/login_navigator.dart';
import 'package:delivoostores/Chat/UI/chat_page.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/ListItems/about_us_page.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/ListItems/support_page.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/ListItems/tnc_page.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/ListItems/wallet_page.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/account_page.dart';
import 'package:delivoostores/OrderItemAccount/Order/UI/order_page.dart';
import 'package:delivoostores/OrderItemAccount/Order/UI/orderinfo_page.dart';
import 'package:delivoostores/Pages/addCategory.dart';
import 'package:delivoostores/Pages/addSubCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/ListItems/insight_page.dart';
import 'package:delivoostores/OrderItemAccount/StoreProfile/store_profile.dart';
import 'package:delivoostores/Pages/edititem.dart';
import 'package:delivoostores/Pages/additem.dart';
import 'package:delivoostores/Pages/items.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/ListItems/addtobank_page.dart';
import 'package:delivoostores/OrderItemAccount/order_item_account.dart';

class PageRoutes {
  static const String locationPage = 'location_page';
  static const String orderItemAccountPage = 'order_item_account';
  static const String accountPage = 'account_page';
  static const String orderPage = 'order_page';
  static const String orderInfoPage = 'orderinfo_page';
  static const String tncPage = 'tnc_page';
  static const String aboutUsPage = 'about_us_page';
  static const String savedAddressesPage = 'saved_addresses_page';
  static const String supportPage = 'support_page';
  static const String walletPage = 'wallet_page';
  static const String loginNavigator = 'login_navigator';
  static const String chatPage = 'chat_page';
  static const String insightPage = 'insight_page';
  static const String storeProfile = 'store_profile';
  static const String addItem = 'additem';
  static const String editItem = 'edititem';
  static const String Items = 'items';
  static const String addToBank = 'addtobank_page';
  static const String addCategory = 'addCategory';
  static const String addSubCategory = 'addSubCategory';

  Map<String, WidgetBuilder> routes() {
    return {
      orderPage: (context) => OrderPage(),
      orderInfoPage: (context) => OrderInfo(),
      accountPage: (context) => AccountPage(),
      tncPage: (context) => TncPage(),
      aboutUsPage: (context) => AboutUsPage(),
      supportPage: (context) => SupportPage(),
      loginNavigator: (context) => LoginNavigator(),
      walletPage: (context) => WalletPage(),
      chatPage: (context) => ChatPage(),
      insightPage: (context) => InsightPage(),
      storeProfile: (context) => ProfilePage(),
      addItem: (context) => AddItem(),
      editItem: (context) => EditItem(),
      addToBank: (context) => AddToBank(),
      Items: (context) => ItemsPage(),
      orderItemAccountPage: (context) => OrderItemAccount(),
      addCategory: (context) => AddCategory(),
      addSubCategory: (context) => AddSubCategory(),
    };
  }
}
