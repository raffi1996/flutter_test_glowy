import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../extensions/extensions.dart';
import '../themes/app_colors.dart';

class LabelWidget extends StatelessWidget {
  final String labelName;
  const LabelWidget({
    Key? key,
    required this.labelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelName,
          style: GoogleFonts.nunito(
            fontSize: 18,
            color: AppColors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'keywords.all'.tr(),
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: AppColors.mediumLightShadeOrange,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}
