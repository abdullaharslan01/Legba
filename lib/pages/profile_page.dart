import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:legba/companents/toolbar.dart';
import 'package:legba/companents/user_avatar.dart';
import 'package:legba/config/app_strings.dart';
import 'package:legba/constants/enums/project_enums.dart';
import 'package:legba/routes/router_names.dart';
import 'package:legba/styles/app_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _nameState();
}

class _nameState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenuItem>(
            icon: Icon(Icons.more_vert_rounded),
            tooltip: "More",
            onSelected: (value) {
              switch (value) {
                case ProfileMenuItem.edit:
                  context.push(RouterHelper.editProfilePage);
                  break;
                case ProfileMenuItem.logout:
                  break;

                default:
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(AppStrings.edit),
                value: ProfileMenuItem.edit,
              ),
              PopupMenuItem(
                child: Text(AppStrings.logout),
                value: ProfileMenuItem.logout,
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          UserAvatar(size: 90),
          SizedBox(
            height: 24,
          ),
          Text(
            "Mahdi Mirzade",
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Türkiye",
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "479",
                    style: AppText.header2,
                  ),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text(
                    "50",
                    style: AppText.header2,
                  ),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: [
                  Text(
                    "1000",
                    style: AppText.header2,
                  ),
                  Text(AppStrings.following),
                ],
              )
            ],
          ),
          Divider(
            height: 24,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
