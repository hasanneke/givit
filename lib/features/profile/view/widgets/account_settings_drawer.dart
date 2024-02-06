import 'package:flutter/material.dart';

class AccounSettingsDrawer extends StatelessWidget {
  const AccounSettingsDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 20, 10),
        child: Column(
          children: [
            ListTile(
              title: const Text('Account Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile Seetings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Payment Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.logout),
                ),
                const Text('Logout'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
