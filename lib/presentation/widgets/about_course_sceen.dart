import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/extandable_text_widget.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            body:Container(
              margin: EdgeInsets.all(20),
              child: ListView(
                children: [
                  CustomText(text: "Mentor",fontWeight: FontWeight.w900,fontSize: 3.h,),
                  Space(height: 2.h,),
                  Container(
                    width: double.infinity,
                    height: 10.h,
                    color: Colors.blueAccent,
                  ),
                  Space(height: 2.h,),
                  CustomText(text: "About Course",fontWeight: FontWeight.w900,fontSize: 3.h,),
                  Space(height: 2.h,),
                  CustomText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",maxLines: 100,color: Colors.black45),
                  Space(height: 3.h,),
                  ExpandableTextWidget(
                      text:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                  Space(height: 3.h,),
                  CustomText(text: "Tools",fontWeight: FontWeight.w900,fontSize: 2.7.h,),
                  Space(height: 1.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("images/icons8-figma-48.png",height: 4.h,),
                      CustomText(text: "  Figma",fontWeight: FontWeight.w700,fontSize: 2.3.h,),
                    ],
                  ),
                 Container(
                   height: 7.h,
                   margin: EdgeInsets.only(top: 16),
                   child: ElevatedButton(onPressed: (){}, child:Text(r"Enroll Course - $40"),
                   style: ElevatedButton.styleFrom(
                     shape:RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(24),
                     ),
                     primary: Colors.blueAccent
                   ),
                   ),
                 ),
                ],
              ),
            ),




      ),
    );
  }
}
