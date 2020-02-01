import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  final String myCountry;
  Country(this.myCountry);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          "https://www.nationalflags.shop/WebRoot/vilkasfi01/Shops/2014080403/53E6/2F4D/31F9/C9B8/6E76/0A28/100B/04E2/Flag_of_Bangladesh.png",
          fit: BoxFit.contain,
          height: 200,
          width: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              myCountry,
              textScaleFactor: 2,
            ),
            SizedBox(
              width: 20.0,
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("Click me"),
              onPressed: () {},
            )
          ],
        ),
      ],
    );
  }
}
