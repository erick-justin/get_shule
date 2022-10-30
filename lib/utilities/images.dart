import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;

  const CachedImage({Key? key, required this.image, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}

class AssetImage1 extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;

  const AssetImage1({Key? key, required this.image, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}

class CustomFileImage extends StatelessWidget {
  final File image;
  final double? height;
  final double? width;

  const CustomFileImage({Key? key, required this.image, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.file(
      image,
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}

const splashone = "assets/images/splashone.png";
const splashtwo = "assets/images/splashtwo.png";
const splashthree = "assets/images/splashthree.png";
const dakikalogoicon = "assets/images/dakikalogo.png";
const searchnormalicon = "assets/images/searchnormal.png";
const profileicon = "assets/images/profile.png";
const notificationicon = "assets/images/notificationbing.png";
const hearticon = "assets/images/heart.png";
const messageicon = "assets/images/messages.png";
const verifiedicon = "assets/images/verifiedicon.png";
const archiveminusicon = "assets/images/archiveminus.png";
const flag = "assets/images/flag.png";
const facebook = "assets/images/facebook.png";
const google = "assets/images/google.png";
const calendar = "assets/images/calendar.png";
const gift = "assets/images/gift.png";
const send = "assets/images/send.png";
const e404 = "assets/images/404.png";
const m_user = "assets/images/user.png";
const birthday = "assets/images/birthday.png";
const closeCircle = "assets/images/close_ircle.png";
const thankyou = "assets/images/thankyou.png";
const loginImage = "assets/images/backgrou.png";
const becomeInflue = "assets/images/become_influencer.png";
const videoIcon = "assets/images/video.png";
const callIcon = "assets/images/call.png";
const mpesa = "assets/images/mpesa.png";
const tigo = "assets/images/tigo.png";
const airtel  = "assets/images/artel.png";
const halo = "assets/images/halo.png";
const menuProfile= "assets/images/side_menu.png";
