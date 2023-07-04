import 'package:flutter/material.dart';
import '../sections/contact/contact.dart';
import '../sections/home/home.dart';
import '../sections/portfolio/portfolio.dart';
import '../sections/services/services.dart';
import '../widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
