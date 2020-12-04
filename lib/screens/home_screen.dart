import 'package:flutter/material.dart';

import 'package:zenn_expandable_text_sample/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black.withOpacity(0.4),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text(
          '📝  Flutter でボタンを押すと伸縮する Text を作る',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: ExpandableText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec est ligula, sagittis vel augue ut, consectetur porta est. Aliquam in ante facilisis, volutpat diam in, elementum quam. Pellentesque consectetur, ante a scelerisque tempus, purus nibh cursus nisl, id vulputate justo turpis vitae odio.',
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}