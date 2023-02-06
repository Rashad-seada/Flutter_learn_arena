import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool isHiddenText = true;

  double textHeight = 40; // it should be screen height

  @override
  void initState() {
    super.initState();
    print(widget.text.length);
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? CustomText(color: Colors.red, text: firstHalf)
          : SizedBox(
                width: double.infinity,
            child: Wrap(
                children: [
                  CustomText(
                     color: Colors.black45,
                    text: isHiddenText
                        ? (firstHalf+"." )
                        : (firstHalf + secondHalf),
                    maxLines: 100,
                  ),
                 InkWell(onTap: (){
                   setState(() {
                     isHiddenText=!isHiddenText;
                   });
                 },child: CustomText(text: isHiddenText?" Read more...":"Show less",fontWeight: FontWeight.w900,color: Colors.blueAccent,))

                ],
              ),
          ),
    );
  }
}
