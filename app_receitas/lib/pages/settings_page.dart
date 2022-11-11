import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../constants.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({
     Key? key,
     required this.title
    }) : super(key: key);
  final String title;
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 255, 166, 93),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            margin: const EdgeInsetsDirectional.all(20),
            title: config_text('Configurações', 20),
            tiles: [
              SettingsTile(
                title: Text("Idioma"),
                description: Text('Português'),
                leading: const Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: Text('Usar tema padrão'),
                leading: const Icon(Icons.phone_android),
                enabled: isSwitched,
                onToggle: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }, initialValue: null,
              ),
            ],
          ),
          SettingsSection(
            margin: const EdgeInsetsDirectional.all(20),
            title: config_text('Segurança', 20),
            tiles: [
              SettingsTile(
                title: Text('Privacidade'),
                description: Text('Informações avançadas'),
                leading: const Icon(Icons.lock),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: Text('Usar digital'),
                leading: const Icon(Icons.fingerprint),
                enabled: true,
                onToggle: (value) {}, initialValue: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}