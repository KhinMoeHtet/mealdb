import 'package:flutter/material.dart';
import 'package:meal_db/main.dart';

class RandomMealDetails extends StatelessWidget {
  final Meals meals;
  const RandomMealDetails({Key key, this.meals}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals Details"),
      ),
      body: Container(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(8)),
            meals.strMeal == null
                ? Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKfaZhbCD28BohOC2ktAN1nY_GOPLaiiOxAA&usqp=CAU",
                    height: 200,
                  )
                : Image.network(
                    meals.strMeal,
                    height: 300,
                  ),
            Padding(padding: EdgeInsets.all(5)),
            meals.strMeal == null ? Text("") : Text(meals.strMeal),
            meals.strMealThumb == null ? Text("") : Text(meals.strMealThumb),
            meals.strCategory == null ? Text("") : Text(meals.strCategory),
            meals.strTags == null ? Text("") : Text(meals.strTags),
            meals.idMeal == null ? Text("") : Text(meals.idMeal),
            meals.strArea == null ? Text("") : Text(meals.strArea),
          ],
        ),
      )),
    );
  }
}
