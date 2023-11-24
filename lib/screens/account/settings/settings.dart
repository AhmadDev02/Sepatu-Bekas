import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  static String routeName = '/settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int langueageIndex = 0;
  TextStyle headingStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.green);

  bool lockAppSwitchVal = false;
  bool fingerprintSwitchVal = false;
  bool changePassSwitchVal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 5.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Common",
                    style: headingStyle,
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("English"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.cloud),
                title: Text("Environment"),
                subtitle: Text("Production"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Account", style: headingStyle),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone Number"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.mail),
                title: Text("Email"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sign Out"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Security", style: headingStyle),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.phonelink_lock_outlined),
                title: const Text("Lock app in background"),
                trailing: Switch(
                  value: lockAppSwitchVal,
                  activeColor: Colors.greenAccent,
                  onChanged: (val) {
                    setState(() {
                      lockAppSwitchVal = val;
                    });
                  },
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.fingerprint),
                title: const Text("Use fingerprint"),
                trailing: Switch(
                    value: fingerprintSwitchVal,
                    activeColor: Colors.greenAccent,
                    onChanged: (val) {
                      setState(() {
                        fingerprintSwitchVal = val;
                      });
                    }),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Change Password"),
                trailing: Switch(
                    value: changePassSwitchVal,
                    activeColor: Colors.greenAccent,
                    onChanged: (val) {
                      setState(() {
                        changePassSwitchVal = val;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Misc", style: headingStyle),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.file_open_outlined),
                title: Text("Terms of Service"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.file_copy_outlined),
                title: Text("Open Source and Licences"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
