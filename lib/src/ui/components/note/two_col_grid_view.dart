import 'package:flutter/material.dart';

class TwoColumnGridView extends StatelessWidget {
  final Function itemBuilder;

  const TwoColumnGridView({Key key, @required this.itemBuilder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: this.itemBuilder,
      ),
    );
  }
}
