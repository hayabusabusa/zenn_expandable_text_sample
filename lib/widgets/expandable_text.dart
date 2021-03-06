import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText(
    this.data, {
      Key key,
      this.maxLines = 3,
      this.textOverflow = TextOverflow.fade,
      this.style,
    }
  ): super(key: key);

  final String data;
  final int maxLines;
  final TextOverflow textOverflow;
  final TextStyle style;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      final textStyle = widget.style ?? DefaultTextStyle.of(context).style;
      final textSpan = TextSpan(text: widget.data, style: textStyle);
      final textPainter = TextPainter(text: textSpan, textDirection: TextDirection.ltr, maxLines: widget.maxLines);

      textPainter.layout(maxWidth: constraints.maxWidth);

      if (textPainter.didExceedMaxLines) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.data,
              style: textStyle,
              overflow: widget.textOverflow,
              maxLines: _isExpanded ? null : widget.maxLines,
            ),
            const SizedBox(height: 4.0,),
            FlatButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              }, 
              child: Text(
                _isExpanded ? '閉じる' : '開く'
              ),
            )
          ],
        );
      } else {
        return Text(
          widget.data,
          style: textStyle,
          maxLines: widget.maxLines,
        );
      }
    });
  }
}