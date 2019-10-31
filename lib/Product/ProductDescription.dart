import 'package:flutter/material.dart';

import 'Product.dart';
import 'Style.dart';
import 'Theme.dart';

class ProductDescription extends StatelessWidget {
  ProductDescription({Key key, this.recipe}) : super(key: key);

  final TextStyle titleStyle = const Style(fontSize: 45.0);
  final TextStyle descriptionStyle =
      const Style(fontSize: 15.0, color: Colors.black54, height: 24.0 / 15.0);
  final TextStyle itemStyle = const Style(fontSize: 15.0, height: 24.0 / 15.0);
  final TextStyle itemAmountStyle =
      Style(fontSize: 15.0, color: Colors.teal, height: 24.0 / 15.0);
  final TextStyle headingStyle = const Style(
      fontSize: 22.0, fontWeight: FontWeight.bold, height: 24.0 / 15.0);

  final Product recipe;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 0.0),
          child: Table(
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(64.0),
            },
            children: <TableRow>[
              TableRow(children: <Widget>[
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Image.asset(
                    recipe.imageLink,
                    width: 32.0,
                    height: 32.0,
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(recipe.nom, style: titleStyle),
                ),
              ]),
              TableRow(children: <Widget>[
                const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                  child: Text("Description", style: headingStyle),
                ),
              ]),
              TableRow(children: <Widget>[
                const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                  child: Text(recipe.description, style: descriptionStyle),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildItemRow(String left, String right) {
    return TableRow(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(left, style: itemAmountStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(right, style: itemStyle),
        ),
      ],
    );
  }
}
