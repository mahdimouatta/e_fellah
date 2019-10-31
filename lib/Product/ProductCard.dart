import 'package:flutter/material.dart';

import 'Product.dart';
import 'Style.dart';
import 'ProductDescription.dart';

const double _kAppBarHeight = 190.0;
const double _kFabHalfSize =
    160; // TODO(mpcomplete): needs to adapt to screen size
const double _kRecipePageMaxWidth = 500.0;

class ProductCard extends StatefulWidget {
  final Product recipe = new Product(
    description:
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
  final TextStyle menuItemStyle =
      const Style(fontSize: 15.0, color: Colors.black54, height: 24.0 / 15.0);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Hero(
              tag: 'test',
              child: Image.asset(
                "assets/image.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                actions: <Widget>[
                  PopupMenuButton<String>(
                    onSelected: (String item) {},
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuItem<String>>[
                      _buildMenuItem(Icons.share, 'Tweet recipe'),
                      _buildMenuItem(Icons.email, 'Email recipe'),
                      _buildMenuItem(Icons.message, 'Message recipe'),
                      _buildMenuItem(Icons.people, 'Share on Facebook'),
                    ],
                  ),
                ],
                flexibleSpace: const FlexibleSpaceBar(
                  background: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, -0.2),
                        colors: <Color>[Color(0x60000000), Color(0x00000000)],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: _kFabHalfSize),
                      width: _kRecipePageMaxWidth,
                      child: ProductDescription(recipe: widget.recipe),
                    ),
                    Positioned(
                      right: 16.0,
                      top: _kFabHalfSize - 60,
                      child: FloatingActionButton(
                        child: Icon(Icons.favorite),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  PopupMenuItem<String> _buildMenuItem(IconData icon, String label) {
    return PopupMenuItem<String>(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(icon, color: Colors.black54),
          ),
          Text(label, style: menuItemStyle),
        ],
      ),
    );
  }
}
