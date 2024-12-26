import 'package:flutter/material.dart';
import 'package:responsive_smart_grid/models/grid_item.dart';
import 'package:responsive_smart_grid/responsive_smart_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Responsive Smart Grid")),
        body: SingleChildScrollView(
          child: ResponsiveSmartGrid(
            items: List.generate(
              40,
              (index) => GridItem(
                index: index,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Image.network(
                    'https://loremflickr.com/200/${(100 * (index + 1))}?random=${index + 1}',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ]),
              ),
            ),
            crossAxisCount: 2, // Number of columns
          ),
        ),
      ),
    );
  }
}
