import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrangeAccent,
      child: ClipRect(
        child: Flex(
            direction: context.isMobile ? Axis.vertical : Axis.horizontal,
            children: [
              "Support In,\n"
                  .richText
                  .withTextSpanChildren(
                      ["Muhim Against China.".textSpan.green900.make()])
                  .xl4
                  .white
                  .make(),
              20.widthBox,
              Expanded(
                  child: VxSwiper(
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                items: [
                  ProjectWidget(title: "Ban Chinese Apps"),
                  ProjectWidget(title: "Ban Chinese Products"),
                  ProjectWidget(title: "Say No Funds From China"),
                  ProjectWidget(title: "Get Our Area Back"),
                  ProjectWidget(title: "Stay Home Stay Safe"),
                ],
                height: 180,
                viewportFraction: context.isMobile ? 0.75 : 0.4,
                autoPlay: true,
                autoPlayAnimationDuration: 1.seconds,
              ))
            ]).p64().h(context.isMobile ? 500 : 300),
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Colors.deepOrangeAccent, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
