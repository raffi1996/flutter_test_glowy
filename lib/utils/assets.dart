import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../themes/app_colors.dart';
import 'color_utils.dart';

///This file is automatically generated.
/// DO NOT EDIT, all your changes would be lost.
class Assets {
  Assets._();

  static const appBarPhoto = 'assets/app_photos/app_bar.png';
  static const banner = 'assets/app_photos/banner_photo.svg';
  static const coinCat = 'assets/app_photos/coin_cat.svg';

  static const settings = 'assets/icons/settings_icon.svg';
  static const avatarPlaceholder = 'assets/icons/avatar_placeholder.svg';
  static const star = 'assets/icons/star_icon.svg';
  static const energy = 'assets/icons/energy_icon.svg';
  static const coin = 'assets/icons/coin_icon.svg';
  static const goodSile = 'assets/icons/good_smile.svg';
  static const pets = 'assets/icons/pets_icon.svg';
  static const trash = 'assets/icons/trash_icon.svg';
  static const done = 'assets/icons/done_icon.svg';
  static const checkBox = 'assets/icons/check_box_icon.svg';
  static const willDone = 'assets/icons/done.svg';
  static const bad = 'assets/icons/bad_icon.svg';
  static const badSmile = 'assets/icons/bad_smile_icon.svg';
  static const xIcon =  'assets/icons/x_icon.svg';
  static const timeExpire =  'assets/icons/time_expire_icon.svg';
  static const delete =  'assets/icons/delete_icon.svg';

}

extension AssetsHelper on String {
  SvgPicture svg({
    Color? color,
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      this,
      color: color,
      height: height,
      width: width,
      fit: fit,
    );
  }

  Image get png => Image.asset(this);

  SvgPicture dynamicColoredSvg({
    Color lightColor = AppColors.white,
    Color darkColor = AppColors.darkGray,
    bool invertColor = false,
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      this,
      color: brightnessColor(
        lightColor: lightColor,
        darkColor: darkColor,
        invert: invertColor,
      ),
      height: height,
      width: width,
      fit: fit,
    );
  }
}
