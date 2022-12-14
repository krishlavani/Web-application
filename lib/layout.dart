import 'package:flutter/material.dart';
import 'package:web/helpers/responsiveness.dart';
import 'package:web/widgets/large_screen.dart';
import 'package:web/widgets/side_menu.dart';
import 'package:web/widgets/small_screen.dart';
import 'package:web/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldkey),
      // drawer: const Drawer(),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
