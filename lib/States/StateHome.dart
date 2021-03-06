import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// Custom packages
import 'package:flutter_app_counter/Pages/PageHome.dart';
import 'package:flutter_app_counter/Widgets/WidgetAppScaffold.dart';
import 'package:flutter_app_counter/Configurations/ConfigurationApp.dart';

class StateHome extends State<PageHome> {
  final ConfigurationApp configApp = new ConfigurationApp();

  @override
  Widget build(BuildContext context) {
    return WidgetAppScaffold(
      content: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/appBgImage.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Divider(
                    height: 30.0,
                    color: Colors.black,
                  ),
                  Flexible(
                    flex: 1,
                    child: RaisedButton(
                      child: Text(
                        configApp.getAppWelcomeMessage(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
