import 'package:flutter/material.dart';
import 'package:myportfolio/core/utils/app_extensions.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_enums.dart';
import '../widgets/app_bar/custom_menu_btn.dart';
import '../widgets/app_bar/developer_name_btn.dart';
import '../widgets/app_bar/horizontal_headers.dart';
import '../widgets/body/home_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
   //appBar: HomeAppBar(),
   appBar: AppBar(
    backgroundColor: AppColors.primaryColor ,
    title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
      
       const DeveloperNameBtn(),
      
       context.width > DeviceType.ipad.getMaxWidth()
           ? const HorizontalHeaders()
           : const CustomMenuBtn()
     ],
    ),
   ),
    body: HomeBody(),
    );
  }
  double _getHorizontalPadding(BuildContext context) {
    if (context.width < DeviceType.ipad.getMaxWidth()) {
      return context.width * .03;
    } else {
      return context.width * .08;
    }
  }
}
