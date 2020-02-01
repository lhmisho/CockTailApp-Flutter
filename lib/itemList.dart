import 'package:cocktail_app/drinkDetails.dart';
import 'package:flutter/material.dart';

class CocktailList extends StatelessWidget {
  final drinks;

  CocktailList(this.drinks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drinks.length,
      itemBuilder: (item, index) {
        var drink = drinks[index];
        return ListTile(
          leading: Hero(
            tag: drink["idDrink"],
            child: CircleAvatar(
              backgroundImage: NetworkImage(drink["strDrinkThumb"]),
            ),
          ),
          title: Text(
            '${drink["strDrink"]}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          subtitle: Text(
            '${drink["idDrink"]}',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrinkDetails(drink: drink),
                  // fullscreenDialog: true
                ));
          },
        );
      },
    );
  }
}
