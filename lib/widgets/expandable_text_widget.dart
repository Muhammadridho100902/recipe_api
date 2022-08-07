// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_recipe_api/utilities/color.dart';
import 'package:my_recipe_api/widgets/smallText.dart';

class Expandable_Text extends StatefulWidget {
  final String text;
  const Expandable_Text({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<Expandable_Text> createState() => _Expandable_TextState();
}

class _Expandable_TextState extends State<Expandable_Text> {
  late String firstHalf;
  late String SecondHalf;

  bool hiddenText = true;

  // double textHeight = Dimension.screenHeight/5.63;
  double textHeight = 130;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      SecondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      SecondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SecondHalf.isEmpty
          ? SmallText(text: firstHalf, textColor: Colors.black)
          : Column(
            children: [
              SmallText(text: hiddenText?(firstHalf + "..."):(firstHalf+SecondHalf), textColor: Colors.grey),
              InkWell(
                onTap: (){
                  setState(() {
                    hiddenText = !hiddenText;
                  });
                },
                child: Row(
                  children:  [
                    const SmallText(text: "Show More", textColor: ColorData.mainColor),
                    Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: ColorData.mainColor,)
                  ],
                ),
              )
            ],
          ),
    );
  }
}
