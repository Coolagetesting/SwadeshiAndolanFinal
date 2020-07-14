import 'dart:math';
import 'package:swadeshiandolan/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Support\nIndia."
        .text
        .orange600
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();

    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        SafeArea(
          child: VxBox(
                  child: VStack([
            ZStack(
              [
                PictureWidget(),
                Row(
                  children: [
                    VStack([
                      if (context.isMobile) 140.heightBox else 40.heightBox,
                      nameWidget,
                      20.heightBox,
                      VxBox()
                          .color(Colors.deepOrange)
                          .size(60, 10)
                          .make()
                          .px4()
                          .shimmer(primaryColor: Colors.deepOrange),
                      30.heightBox,
                    ]).pSymmetric(
                      h: context.percentWidth * 10,
                      v: 32,
                    ),
                    Expanded(
                      child: VxResponsive(
                        medium: IntroductionWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                        large: IntroductionWidget()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                        fallback: const Offstage(),
                      ),
                    ),
                  ],
                ).w(context.screenWidth),
              ],
            )
          ]))
              .size(context.screenWidth * 100, context.percentHeight * 60)
              .color(Coolors.primaryColor)
              .make(),
        ),
        if (context.isMobile) IntroductionWidget().p16(),
      ],
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Swadeshi Andolan".text.gray500.widest.sm.make(),
          10.heightBox,
          "The Swadeshi movement, part of the Indian independence movement and the developing . . . \nSwa means self or own and desh means country,"
              .text
              .white
              .xl3
              .maxLines(6)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 30),
          20.heightBox,
        ].vStack(),
      ],
      // crossAlignment: CrossAxisAlignment.start,
      alignment: MainAxisAlignment.center,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        child: Transform(
          origin: Offset(
              context.isMobile
                  ? context.percentWidth * 30
                  : context.percentWidth * 5,
              0),
          transform: Matrix4.rotationY(pi),
          child: Image.asset(
            "assets/pic.png",
            fit: BoxFit.cover,
            height: context.percentHeight * 60,
          ),
        ));
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/CoolAgeapp");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/coolageapp/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/company/coolageapp/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.facebook_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.facebook.com/coolageapp/");
      }).make()
    ].hStack();
  }
}
