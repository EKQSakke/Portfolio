import 'package:flutter/material.dart';

import 'project.dart';
import 'style.dart';
import 'socialButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sakari Ekqvist',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _alignProjectRight = true;
  final _scrollController = ScrollController();
  final double _scrollHeightProjects = 1375;
  //final double _scrollHeightContact = 1375;
  final List<Project> _projects = [
    Project('hello', lorem, Image.asset('images/github.png')),
    Project('hello', lorem, Image.asset('images/github.png')),
    Project('hello', lorem, Image.asset('images/github.png')),
    Project('hello', lorem, Image.asset('images/github.png'))
  ];

  void scrollTo(double height) {
    _scrollController.animateTo(height, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorBG,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              // Nav Bar
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => scrollTo(_scrollHeightProjects),
                    child: Text(
                      'Projects',
                      style: navbarText,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(48, 0, 176, 0),
                    child: SelectableText(
                      'Contact',
                      style: navbarText,
                    ),
                  )
                ],
              ),
            ),
            //Hero section
            Container(
                margin: EdgeInsets.fromLTRB(200, 200, 200, 200),
                height: screen.height * .75,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 48,
                          width: 48,
                          child: InkWell(
                              onTap: () => scrollTo(_scrollHeightProjects), child: Image.asset('images/github.png'))),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Stack(
                                  children: [
                                    Transform.rotate(
                                      angle: 1,
                                      child: Text(
                                        '01010011 01100001\n01101011 01100001\n01110010 01101001\n00100000 01000101\n01101011 01110001\n01110110 01101001\n01110011 01110100',
                                        style: fadeText,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                                          child: SelectableText(
                                            "Sakari Ekqvist",
                                            style: headerText
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.all(12),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 48,
                                                ),
                                                SocialButton(
                                                    imageName: 'images/github.png', link: 'github account page'),
                                                Padding(
                                                  padding: const EdgeInsets.fromLTRB(52, 0, 0, 0),
                                                  child: SocialButton(
                                                      imageName: 'images/linkedin.png', link: 'linkedin page'),
                                                ),
                                              ],
                                            )),
                                        SelectableText(
                                          "- Programmer\n- Unity\n- Flutter",
                                          style: blueText,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SelectableText.rich(TextSpan(text: 'Hi! ', style: mainText, children: [
                                    TextSpan(
                                        text: 'I’m a Turku-based game/software developer.' +
                                            'I have experience working in Unity, Flutter, ' +
                                            'and various other environments.' +
                                            '\n\nGot an interesting project?\nContact me at:\n',
                                        style: blueText),
                                    TextSpan(text: 'sakari.ekqvist@gmail.com')
                                  ])),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Column(
              children: _projects.map((e) {
                _alignProjectRight = !_alignProjectRight;
                return ProjectCard(project: e, alignRight: _alignProjectRight,);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
