import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/data/models/project.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';





class PreviewProject extends StatelessWidget {
  const PreviewProject({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
     return   Scaffold(
   //appBar: HomeAppBar(),
   appBar: AppBar(
    backgroundColor: AppColors.appBarColor ,
    title:  FittedBox(
            child: Text(
              project.name,
              style: AppStyles.s24.copyWith(color: AppColors.primaryColor),
            ),
          ),
   ),
    body:Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
   
      children: [
   SizedBox(height: 10,),
         AutoSizeText(
              "Description: ",
              style: AppStyles.s31,
              minFontSize: 12,
             
            ),
             SizedBox(height: 5,),
 AutoSizeText(
              project.description,
              style: AppStyles.s14,
              minFontSize: 12,
             
            ),
             SizedBox(height: 5,),
            AutoSizeText(
              "Technology: ",
           style: AppStyles.s31,
              minFontSize: 12,
             
            ),
             SizedBox(height: 5,),
 AutoSizeText(
              project.technologies!,
              style: AppStyles.s14,
              minFontSize: 12,
             
            ),
             SizedBox(height: 5,),
            AutoSizeText(
              "Fonctionality: ",
            style: AppStyles.s31,
              minFontSize: 12,
             
            ),
             SizedBox(height: 5,),
 AutoSizeText(
              project.fonctionality!,
              style: AppStyles.s14,
              minFontSize: 12,
             
            ),
           
      ],
    ),
      
    ) 
    );
  }}