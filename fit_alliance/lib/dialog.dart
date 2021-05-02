import 'package:fit_alliance/challenge.dart';
import 'package:flutter/material.dart';

class MultiSelectionExample extends StatefulWidget {

  List<Exercises> _challenges;

  MultiSelectionExample(this._challenges);

  @override
  _MultiSelectionExampleState createState() => _MultiSelectionExampleState();
}

class _MultiSelectionExampleState extends State<MultiSelectionExample> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            widget._challenges[index].isSelected = !widget._challenges[index].isSelected;
            setState(() {});
          },
          child: Container(
            color: widget._challenges[index].isSelected
                ? Colors.green[100]
                : null,
            child: Row(
              children: <Widget>[
                Checkbox(
                    value: widget._challenges[index].isSelected,
                    onChanged: (s) {
                      widget._challenges[index].isSelected = !widget._challenges[index].isSelected;
                      setState(() {});
                    }),
                Text(widget._challenges[index].challengeName)
              ],
            ),
          ),
        );
      },
      itemCount: widget._challenges.length,
    );
  }
}
