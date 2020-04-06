import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/constants.dart';
import 'package:flutter_design_patterns/widgets/platform_specific/platform_button.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key key,
    @required this.iconData,
    @required this.title,
    @required this.onPressed,
  })  : assert(iconData != null),
        assert(title != null),
        assert(onPressed != null),
        super(key: key);

  final IconData iconData;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return PlatformButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            iconData,
            color: Colors.white,
          ),
          const SizedBox(width: spaceXS),
          Text(title),
        ],
      ),
      materialColor: Colors.black,
      materialTextColor: Colors.white,
      onPressed: onPressed,
    );
  }
}
