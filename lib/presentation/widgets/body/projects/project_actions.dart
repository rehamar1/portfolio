import 'package:flutter/material.dart';
import 'package:myportfolio/data/models/project.dart';
import 'package:myportfolio/presentation/widgets/body/projects/project_preview.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import 'package:universal_html/html.dart' as html;

import '../../app_bar/custom_menu_btn.dart';



class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (project.previewLink != null)
            Expanded(
              child: CustomButton(
                label: 'Preview',
                backgroundColor: AppColors.primaryColor,
                onPressed: () {
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  PreviewProject( project: project,)),
  );


                },
              ),
            ),
          if (project.githubRepoLink != null) ...[
            if (project.previewLink != null) const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'Github',
                borderColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.githubRepoLink!, '_blank');
                },
              ),
            ),
          ],
          if (project.googlePlay != null) ...[
            if (project.previewLink != null || project.githubRepoLink != null)
              const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'play store',
                borderColor: AppColors.primaryColor,
                onPressed: () {
                     _launchURL();
                },
              ),
            ),
          ],
          if (project.previewLink == null &&
              project.githubRepoLink == null &&
              project.googlePlay == null)
            Expanded(
              child: CustomButton(
                label: 'No actions available',
                borderColor: AppColors.primaryColor,
                onPressed: () {},
              ),
            )
        ],
      ),
    );
  }
   void _launchURL() async {
  if (await canLaunch(project.googlePlay!)) {
    await launch(project.googlePlay!);
  } else {
    throw 'Could not launch ${project.googlePlay}';
  }
}
}
