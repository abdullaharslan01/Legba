import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:legba/companents/post_items.dart';
import 'package:legba/companents/toolbar.dart';
import 'package:legba/config/app_icons.dart';
import 'package:legba/config/app_strings.dart';
import 'package:legba/routes/router_names.dart';
import 'package:legba/styles/app_color.dart';
import 'package:legba/styles/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  var items = mocksUsersFromServer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ToolBar(
          title: AppStrings.appName,
          actions: [
            IconButton(
              onPressed: () {
                context.push(RouterHelper.nearByPages);
              },
              icon: SvgPicture.asset(AppIcons.icLocation),
            )
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return mocksUsersFromServer()[index];
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
          itemCount: mocksUsersFromServer().length,
        ));
  }
}

List<Widget> mocksUsersFromServer() {
  List<Widget> _users = [];
  for (var i = 0; i < 1000; i++) {
    _users.add(PostItem());
  }
  return _users;
}
