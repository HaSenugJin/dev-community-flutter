import 'package:flutter/material.dart';

class OauthLoginButton extends StatelessWidget {
  final assetImage;
  var height;
  var width;

  OauthLoginButton(this.assetImage, this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.6,
        // height: MediaQuery.of(context).size.height * 0.07,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(assetImage),
          ),
        ),
      ),
    );
  }
}
