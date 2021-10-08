import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;
  const SizedText({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size textSize = _textSize(text);
    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 16, color: color, fontWeight: FontWeight.w700),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.clip,
          ),
          SizedBox(height: 5),
          Row(
            children: [
              for (int i = 0; i < textSize.width / 5; i++)
                i.isEven
                    ? //글자 수에 맞게 근데 왜 5로 나눴나? width가 5니까
                    Container(
                        width: 5,
                        height: 2,
                        color: color,
                      )
                    : Container(
                        width: 5,
                        height: 2,
                        color: Colors.white,
                      ) //점 하나의 width & height
            ],
          )
        ],
      ),
    );
  }

  Size _textSize(String text) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: text,
          style: TextStyle(
              fontSize: 16, color: color, fontWeight: FontWeight.w700),
        ),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity); //ltr : left to right
    return textPainter.size;
  }
}
