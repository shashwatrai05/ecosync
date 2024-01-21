import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/smart_dustbins.dart';
import '../screens/waste_segregation.dart';
import '../widgets/ai_bot.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color iconColor = Color.fromRGBO(6, 85, 55, 1);
    const int flowersCount = 123; // Placeholder value for flowers count
    const String profileName = 'Shashwat Rai'; // Placeholder value for profile name
    const textstyle=TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black
    );

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade200, Colors.green.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 35,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      
                      child: Icon(Icons.person, color: Colors.green, size: 40),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      profileName,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.local_florist_rounded,
                          color: Color.fromARGB(255, 200, 137, 36),
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          flowersCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.white),
              ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.shop,
                  color: iconColor,
                ),
                title: const Text(
                  'Get Plants',
                  style: textstyle,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GreenFlowerExchangeScreen()),
                  );
                },
              ),
              const Divider(color: Colors.white),
              ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.dumpster,
                  color: iconColor,
                ),
                title: const Text(
                  'Dustbin Dashboard',
                  style: textstyle,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DustbinDashboardScreen()),
                  );
                },
              ),
              const Divider(color: Colors.white),
              ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.robot,
                  color: iconColor,
                ),
                title: const Text(
                  'AI Bot',
                  style: textstyle
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WasteSegregationBot()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
