import 'package:flutter/material.dart';

import 'Product.dart';

var favorite = 0;

class ProductCard extends StatefulWidget {
  final Product recipe = new Product(
    description:
        "helloLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras velit erat, bibendum vitae aliquet id, faucibus at mi. Fusce imperdiet velit id feugiat ultricies. In id scelerisque eros, id tempus dui. Duis accumsan luctus orci, et scelerisque eros tristique id. Sed ut nibh vel magna cursus iaculis et id dolor. Pellentesque turpis arcu, dictum aliquet viverra a, molestie nec magna. Duis augue lacus, sollicitudin sit amet congue ac, faucibus quis est. Fusce et ante non ante mattis efficitur eu nec nisi. Ut quam felis, pulvinar consectetur vehicula a, tempor lacinia est. Morbi tincidunt mi at tortor placerat scelerisque."
        "helloLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras velit erat, bibendum vitae aliquet id, faucibus at mi. Fusce imperdiet velit id feugiat ultricies. In id scelerisque eros, id tempus dui. Duis accumsan luctus orci, et scelerisque eros tristique id. Sed ut nibh vel magna cursus iaculis et id dolor. Pellentesque turpis arcu, dictum aliquet viverra a, molestie nec magna. Duis augue lacus, sollicitudin sit amet congue ac, faucibus quis est. Fusce et ante non ante mattis efficitur eu nec nisi. Ut quam felis, pulvinar consectetur vehicula a, tempor lacinia est. Morbi tincidunt mi at tortor placerat scelerisque.",
    imageLink: "",
    nom: "nom",
    prix: 150,
    review: 5,
    stars: 2,
    users: 4,
  );

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final Product product = new Product(
    description:
        "helloLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras velit erat, bibendum vitae aliquet id, faucibus at mi. Fusce imperdiet velit id feugiat ultricies. In id scelerisque eros, id tempus dui. Duis accumsan luctus orci, et scelerisque eros tristique id. Sed ut nibh vel magna cursus iaculis et id dolor. Pellentesque turpis arcu, dictum aliquet viverra a, molestie nec magna. Duis augue lacus, sollicitudin sit amet congue ac, faucibus quis est. Fusce et ante non ante mattis efficitur eu nec nisi. Ut quam felis, pulvinar consectetur vehicula a, tempor lacinia est. Morbi tincidunt mi at tortor placerat scelerisque.\nhelloLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras velit erat, bibendum vitae aliquet id, faucibus at mi. Fusce imperdiet velit id feugiat ultricies. In id scelerisque eros, id tempus dui. Duis accumsan luctus orci, et scelerisque eros tristique id. Sed ut nibh vel magna cursus iaculis et id dolor. Pellentesque turpis arcu, dictum aliquet viverra a, molestie nec magna. Duis augue lacus, sollicitudin sit amet congue ac, faucibus quis est. Fusce et ante non ante mattis efficitur eu nec nisi. Ut quam felis, pulvinar consectetur vehicula a, tempor lacinia est. Morbi tincidunt mi at tortor placerat scelerisque.",
    imageLink: "assets/image.jpg",
    nom: "nom",
    prix: 150,
    review: 5,
    stars: 2,
    users: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              foregroundDecoration: BoxDecoration(color: Colors.transparent),
              height: 400,
              child: Image.asset(
                product.imageLink,
                fit: BoxFit.cover,
              )),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 160),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Product\nName",
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          gradient: LinearGradient(
                            colors: [Colors.greenAccent, Colors.black],
                          ),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        "review : ../10",
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      color: Theme.of(context).canvasColor,
                      iconSize: 45,
                      icon: Icon(
                        favorite == 0 ? Icons.favorite_border : Icons.favorite,
                      ),
                      onPressed: () {
                        switcher();
                      },
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).canvasColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).canvasColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).canvasColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Theme.of(context).canvasColor,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Theme.of(context).canvasColor,
                                    ),
                                  ],
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.location_on,
                                      size: 16.0,
                                      color: Colors.grey,
                                    )),
                                    TextSpan(text: "8 km to centrum")
                                  ]),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12.0),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "200 DH",
                                style: Theme.of(context).textTheme.body2,
                              ),
                              Text(
                                "/Kg",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          color: Theme.of(context).canvasColor,
                          textColor: Colors.white,
                          child: Text(
                            "Book Now",
                            style: Theme.of(context).textTheme.headline,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 32.0,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        "Description".toUpperCase(),
                        style: Theme.of(context).textTheme.subhead,
                      ),
                      const SizedBox(height: 10.0),
                      const SizedBox(height: 10.0),
                      Text(
                        product.description,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: null),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              actions: <Widget>[],
              title: Text(
                "DETAIL",
                style: Theme.of(context).textTheme.subhead,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("Search")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    title: Text("Favorites")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), title: Text("Settings")),
              ],
            ),
          )
        ],
      ),
    );
  }

  void switcher() {
    setState(() {
      if (favorite == 0)
        favorite = 1;
      else
        favorite = 0;
    });
  }
}
