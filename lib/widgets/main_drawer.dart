import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: Colors.yellow[800],
              child: Text('Cooking Up !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 20,),
            buildListTile('meals', Icons.restaurant, () {
              Navigator.of(context).pushNamed("/");
            }),
            buildListTile('filters', Icons.settings, () {
              Navigator.of(context).pushNamed(FiltersScreen.routeName);
            }),

          ],

        ),
      );

  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler(),
    );
  }
}
