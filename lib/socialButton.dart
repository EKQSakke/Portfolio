import 'package:flutter/material.dart';

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
