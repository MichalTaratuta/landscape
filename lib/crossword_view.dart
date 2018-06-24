import 'package:flutter/material.dart';

const double _MARGIN_HORIZONTAL = 30.0;
const double _MARGIN_VERTICAL = 4.0;
const Color _CELL_BACKGROUND = const Color(0xFFFFFFFF);
const Color _BLANK_CELL_BACKGROUND = const Color(0xFF000000);
const double _CELL_SPACING = 2.0;

class CrosswordView extends StatelessWidget {
  CrosswordView({Key key, this.gridElements}) : super(key: key);

  // A simplified way to represent the list of cells in the grid. In practice,
  // you would want more complex data than an integer to represent each cell
  // in a crossword, but this is beyond the scope of this tutorial.
  List<int> gridElements;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery
        .of(context)
        .orientation;
    bool portrait = orientation == Orientation.portrait;
    Widget grid = new GridView.count(
        crossAxisCount: 8,
        shrinkWrap: true,
        childAspectRatio: 1.0, // This means each cell is a square
        padding: const EdgeInsets.only(left: _MARGIN_HORIZONTAL,
            right: _MARGIN_HORIZONTAL,
            top: _MARGIN_VERTICAL,
            bottom: _MARGIN_VERTICAL),
        mainAxisSpacing: _CELL_SPACING,
        crossAxisSpacing: _CELL_SPACING,
        scrollDirection: portrait? Axis.vertical:Axis.horizontal,
        children: gridElements.map((int cell) {
          return new Container(
            color: cell == 0?_BLANK_CELL_BACKGROUND: _CELL_BACKGROUND,
          );
        }).toList())
    ;

    return new Container(
      color: const Color(0x11000000),
      child: grid,
    );
  }

}