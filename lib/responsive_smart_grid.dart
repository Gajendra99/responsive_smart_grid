library responsive_smart_grid;

import 'package:flutter/material.dart';
import 'models/grid_item.dart';

class ResponsiveSmartGrid extends StatelessWidget {
  final List<GridItem> items;
  final int crossAxisCount;
  double? horizontalSpacing;
  double? verticalSpacing;
  BoxDecoration? tileBoxDecoration;
  EdgeInsets? tilePadding;
  Matrix4? tileTransform;

  ResponsiveSmartGrid({
    required this.items,
    required this.crossAxisCount,
    this.horizontalSpacing,
    this.verticalSpacing,
    this.tileBoxDecoration,
    this.tilePadding,
    this.tileTransform,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columnWidth = constraints.maxWidth / crossAxisCount;

        List<double> columnHeights = List.filled(crossAxisCount, 0.0);
        List<List<GridItem>> columns = List.generate(crossAxisCount, (_) => []);

        for (var item in items) {
          int targetColumn = 0;

          for (int i = 1; i < columnHeights.length; i++) {
            if (columnHeights[i] < columnHeights[targetColumn]) {
              targetColumn = i;
            }
          }

          columns[targetColumn].add(item);
          columnHeights[targetColumn] += 1;
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(crossAxisCount, (index) {
            return Container(
              width: columnWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: columns[index].map((item) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: horizontalSpacing ?? 4.0,
                        vertical: verticalSpacing ?? 4.0),
                    padding: tilePadding,
                    decoration: tileBoxDecoration,
                    transform: tileTransform,
                    child: item.child,
                  );
                }).toList(),
              ),
            );
          }),
        );
      },
    );
  }
}
