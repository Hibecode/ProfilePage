
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:profilepage/appbar_widget.dart';
import 'package:profilepage/model/user.dart';
import 'package:profilepage/utils/user_pref.dart';
import 'package:profilepage/widget/button_widget.dart';
import 'package:profilepage/widget/numbers_widget.dart';
import 'package:profilepage/widget/profile_widget.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPrefernces.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          NumbersWidget()
        ],
      )
    );
  }


  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: const TextStyle(color: Colors.blueGrey),
      )
    ],
  );

  Widget buildUpgradeButton() => ButtonWidget(
    text: 'Upgrade To PRO',
    onClicked: () {},
  );



}
