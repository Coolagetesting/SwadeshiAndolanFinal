import 'package:swadeshiandolan/pages/frontpage/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../utils/colors.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Want to connect With Us?\nLet's talk."
                  .text
                  .center
                  .white
                  .xl2
                  .make(),
              10.heightBox,
              "hello@coolage.app"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Want to connect With Us?\nLet's talk."
                  .text
                  .center
                  .white
                  .xl2
                  .make(),
              10.widthBox,
              "hello@coolage.app"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 80).scale150().p16(),
        ),
        50.heightBox,
        Image.asset(
          "assets/swadeshiandolan.png",
          height: 70,
          width: 300,
        ),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
        [
          "Made in India with".text.red700.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red700,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
