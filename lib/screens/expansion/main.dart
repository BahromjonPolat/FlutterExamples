import 'package:examples/screens/expansion/data.dart';
import 'package:examples/screens/expansion/model.dart';
import 'package:flutter/material.dart';

class ExpansionTilePage extends StatefulWidget {
  const ExpansionTilePage({Key? key}) : super(key: key);

  @override
  _ExpansionTilePageState createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(productList.length, (index) {
          Product product = productList[index];
          return _setExpansionTile(product);
        }),
      ),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          Product product = productList[index];
          return _setExpansionTile(product);
        });
  }

  _setExpansionTile(Product product) => Expanded(
    child: ExpansionTile(
          trailing: const SizedBox(),
          tilePadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0,
          ),
          childrenPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0,
          ),
          title: Text(
            product.title,
            style: TextStyle(
              color: product.titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          collapsedBackgroundColor: product.color,
          backgroundColor: product.color,
          children: List.generate(
              product.label.length,
              (index) => SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      product.label[index],
                      textAlign: TextAlign.left,
                    ),
                  )),
        ),
  );
}
