import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/custom_technologie.dart';


class BasicTechnologieItem extends StatefulWidget {
  const BasicTechnologieItem({super.key, required this.technologie});

  final CustomTechnologie technologie;

  @override
  State<BasicTechnologieItem> createState() => _BasicTechnologieItemState();
}

class _BasicTechnologieItemState extends State<BasicTechnologieItem> {
  Color itemColor = AppColors.primaryappbar;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.all(8),
    
      decoration: BoxDecoration(
         color: itemColor,
        borderRadius: BorderRadius.circular(16),
      ),
     
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.technologie.logo,
              height: 30,
            ),
            const SizedBox(height: 3),
            if (context.width > DeviceType.mobile.getMinWidth())
              FittedBox(
                child: Text(
                  widget.technologie.service,
                  style: AppStyles.s25,
                  // minFontSize: 8,
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.lowPriority);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.primaryColor);
  }
}
