import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters_screen.dart';
import 'package:mealapp/screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(MyApp(),
  );


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.indigo,


         ),

     // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(ctx)=>TabsScreen(),
        '/category-meals':(ctx)=>CategoryMealScreen(),
        MeaDetailScreen.routeName:(ctx)=>MeaDetailScreen(),
        FiltersScreen.routeName:(ctx)=>FiltersScreen(),
      },
      onGenerateRoute: (settings){
        print(settings.arguments);
        //return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen(),);
      },



















    );
  }
}
