import 'package:flutter/material.dart';

import 'style.dart';

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
  final _scrollController = ScrollController();
  final double _scrollHeightProjects = 1375;
  final double _scrollHeightContact = 1375;

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
                            Flexible(
                              flex: 3,
                              fit: FlexFit.loose,
                              child: Expanded(
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
                                              style: TextStyle(
                                                  fontSize: 48,
                                                  decoration: TextDecoration.underline,
                                                  color: Colors.white,
                                                  fontFamily: 'RobotoMono'),
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
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
            Container(color: Colors.blue, margin: EdgeInsets.all(25), height: 500, child: Text("Hello")),
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatefulWidget {
  final imageName;
  final link;

  const SocialButton({
    Key key,
    @required this.imageName,
    @required this.link,
  }) : super(key: key);

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  double _size = 24;
  double _margins = 12;

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('Open ${widget.link}'),
      onHover: (value) {
        if (value){
          _size = 48;
          _margins = 0;
        }
        else{
          _size = 24;
          _margins = 12;
        }

        print(value);
        setState(() {});
      },
      child: Container(
          margin: EdgeInsets.fromLTRB(_margins, _margins, 0, 0),
          color: Colors.transparent,
          width: _size,
          height: _size,
          child: Image.asset(widget.imageName)),
    );
  }
}
