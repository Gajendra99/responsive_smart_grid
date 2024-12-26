# Responsive Smart Grid

A flexible and responsive grid layout package for Flutter apps, allowing you to create beautiful grid-based designs with customizable options.

---

## Usage

To use this package, add **responsive_smart_grid** as a dependency in your pubspec.yaml file.

```yaml
responsive_smart_grid: ^1.0.0
```

---

## Features

- **Flexible Grid Layout**: Configure the number of items per row using the `crossAxisCount` property.
- **Spacing Options**:
  - Adjust horizontal spacing between items with `horizontalSpacing`.
  - Adjust vertical spacing between rows with `verticalSpacing`.
- **Customizable Tiles**:
  - Add a `BoxDecoration` to each tile using `tileBoxDecoration`.
  - Customize padding within each tile using `tilePadding`.
  - Transform tiles using the `tileTransform` property.
- **Ease of Use**: Simply pass your list of items and configuration properties to create your grid.

---

<Table>
    <tr>
        <td><img src="https://ik.imagekit.io/gajendramenaria9/responsive_smart_grid/rsg1.jpg?updatedAt=1735202471982" alt="preview2"/></td>
<td><img src="https://ik.imagekit.io/gajendramenaria9/responsive_smart_grid/rsg2n.jpg?updatedAt=1735202472820" alt="preview"/></td>
      <td><img src="https://ik.imagekit.io/gajendramenaria9/responsive_smart_grid/rsg3.jpg?updatedAt=1735202473206" alt="preview"/></td>
    </tr>
</Table>

---

## Getting Started

### Installation

Add the following to your `pubspec.yaml`:

```yaml
responsive_smart_grid: ^1.0.0
```

Run:

```bash
flutter pub get
```

### Import the Package

```dart
import 'responsive_smart_grid/responsive_smart_grid.dart';
```

---

## Example

Here’s a simple example to get you started:

```dart
import 'package:flutter/material.dart';
import 'responsive_smart_grid/responsive_smart_grid.dart';

class ResponsiveGridExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Smart Grid'),
      ),
      body: ResponsiveSmartGrid(
        items: List.generate(
          20,
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
        crossAxisCount: 2,
        horizontalSpacing: 5.0,
        verticalSpacing: 5.0,
      ),
    );
  }
}
```

### GridItem Class
Each item in the grid is represented by a `GridItem`, which is passed to the `items` property.

---

## API Reference

### ResponsiveSmartGrid

| Property            | Type             | Description                                                                                  |
|---------------------|------------------|----------------------------------------------------------------------------------------------|
| `items`             | `List<GridItem>` | List of items to display in the grid.                                                        |
| `crossAxisCount`    | `int`            | Number of items per row.                                                                     |
| `horizontalSpacing` | `double?`        | Spacing between grid items horizontally. Default is `4.0`.                                   |
| `verticalSpacing`   | `double?`        | Spacing between grid items vertically. Default is `4.0`.                                     |
| `tileBoxDecoration` | `BoxDecoration?` | Decoration for each tile (e.g., color, border, shadow).                                       |
| `tilePadding`       | `EdgeInsets?`    | Padding inside each grid item.                                                               |
| `tileTransform`     | `Matrix4?`       | Transformation matrix for applying custom transformations to each grid tile.                 |

---

## Developer

**Gajendra Somawat**  
Instagram: [@gajendra_menaria9](https://www.instagram.com/gajendra_menaria9)

For more details, visit the [example page](https://github.com/Gajendra99/responsive_smart_grid/tree/main/example) or contact via Instagram.

---

## Additional Details

For further information, please check out the example provided in the package or feel free to reach out.
