import 'package:flutter/material.dart';

import 'style.dart';

class Project {
  Project(String title, String description, Image image) {
    this.title = title;
    this.description = description;
    this.image = image;
  }

  String title = "Project name";
  String description = "lirum larum hehe xD";
  Image image;
}

class ProjectCard extends StatelessWidget {
  final Project project;
  final bool alignRight;

  const ProjectCard({Key key, this.project, this.alignRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
      width: screen.width * .8,
      height: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(alignRight)
            ProjectImage(screen: screen, project: project),
          Container(
            width: screen.width * .38,
            child: Column(
              children: [
                Text(
                  project.title,
                  style: headerText
                ),
                Text(
                  project.description,
                  style: smallText,
                )
              ],
            ),
          ),
          if(!alignRight)
            ProjectImage(screen: screen, project: project),
        ],
      ),
    );
  }
}

class ProjectImage extends StatelessWidget {
  const ProjectImage({
    Key key,
    @required this.screen,
    @required this.project,
  }) : super(key: key);

  final Size screen;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(width: screen.width * .38, child: Card(child: project.image));
  }
}
