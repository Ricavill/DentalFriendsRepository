import 'package:dental_friends_app/constants/theme.dart';
import 'package:dental_friends_app/widgets/drawer.dart';
//widgets
import 'package:dental_friends_app/widgets/navbar.dart';
import 'package:dental_friends_app/widgets/table-cell.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchValueOne;
  bool switchValueTwo;

  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Settings",
        ),
        drawer: MaterialDrawer(currentPage: "Settings"),
        backgroundColor: MaterialColors.bgColorScreen,
        body: Container(
            child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Recommended Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("These are the most important settings",
                        style: TextStyle(
                            color: MaterialColors.caption, fontSize: 14)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Use FaceID to signin",
                        style: TextStyle(color: Colors.black)),
                    Switch.adaptive(
                      value: switchValueOne,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueOne = newValue),
                      activeColor: MaterialColors.primary,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Auto-Lock security",
                        style: TextStyle(color: Colors.black)),
                    Switch.adaptive(
                      value: switchValueTwo,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueTwo = newValue),
                      activeColor: MaterialColors.primary,
                    )
                  ],
                ),
                TableCellSettings(
                    title: "Notifications",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
                SizedBox(height: 36.0),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text("Payment Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("These are also important settings",
                        style: TextStyle(color: MaterialColors.caption)),
                  ),
                ),
                TableCellSettings(title: "Manage Payment Options"),
                TableCellSettings(title: "Manage Gift Cards"),
                SizedBox(
                  height: 36.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text("Privacy Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Third most important settings",
                        style: TextStyle(color: MaterialColors.caption)),
                  ),
                ),
                TableCellSettings(
                    title: "User Agreement",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
                TableCellSettings(
                    title: "Privacy",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
                TableCellSettings(
                    title: "About",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
              ],
            ),
          ),
        )));
  }
}
