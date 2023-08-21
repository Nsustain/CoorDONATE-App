import 'package:flutter/material.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences preferences;
  late PrefManager prefManager;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        preferences = prefs;
        prefManager = PrefManager(preferences);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (preferences == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User ID: ${prefManager.userID}'),
            Text('Token: ${prefManager.accessToken}'),
            Text('Token: ${prefManager.refreshToken}'),
          ],
        ),
      ),
    );
  }
}
