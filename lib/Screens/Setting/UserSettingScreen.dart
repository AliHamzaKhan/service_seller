

import 'package:flutter/material.dart';

import 'components/SettingListTile.dart';

class UserSettingScreen extends StatelessWidget {
  const UserSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SettingListTile(
          title: "Edit Profile",
          onTap: (){},
          mainIcon: Icons.person,
        ),
        SettingListTile(
          title: "Earnings",
          onTap: (){},
          mainIcon: Icons.money,
        ),
        SettingListTile(
          title: "My Services",
          onTap: (){},
          mainIcon: Icons.home_repair_service,
        ),
        SettingListTile(
          title: "Share Services",
          onTap: (){},
          mainIcon: Icons.share,
        ),
        SettingListTile(
          title: "Payment methods",
          onTap: (){},
          mainIcon: Icons.credit_card,
        ),
        SettingListTile(
          title: "Saved Locations",
          onTap: (){},
          mainIcon: Icons.location_on,
        ),
        SettingListTile(
          title: "Notification",
          onTap: (){},
          mainIcon: Icons.notifications,
        ),
        SettingListTile(
          title: "Terms & Condition",
          onTap: (){},
          mainIcon: Icons.event_note_outlined,
        ),
        SettingListTile(
          title: "Privacy Policy",
          onTap: (){},
          mainIcon: Icons.privacy_tip,
        ),
        SettingListTile(
          title: "Review the app",
          onTap: (){},
          mainIcon: Icons.reviews,
        ),
        SettingListTile(
          title: "Sign out",
          onTap: (){},
          mainIcon: Icons.logout,
        ),
      ],
    );
  }
}
