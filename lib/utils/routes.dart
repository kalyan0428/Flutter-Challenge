import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/home/contact_detail_page.dart';
import 'package:flutter_challenge/pages/home/home_page.dart';

class Routes {
  static MaterialPageRoute _makeRoute(Widget page) => MaterialPageRoute(
    builder: (context) => page,
  );

  static MaterialPageRoute home() => _makeRoute(HomePage());

  static MaterialPageRoute contactDetail({String contact}) => _makeRoute(ContactDetailPage(contact: contact,));

}