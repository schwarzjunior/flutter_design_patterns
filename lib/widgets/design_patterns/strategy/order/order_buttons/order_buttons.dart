import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/widgets/design_patterns/strategy/order/order_buttons/order_button.dart';

class OrderButtons extends StatelessWidget {
  const OrderButtons({
    Key key,
    @required this.onAdd,
    @required this.onClear,
  })  : assert(onAdd != null),
        assert(onClear != null),
        super(key: key);

  final VoidCallback onAdd;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        OrderButton(
          iconData: Icons.add,
          title: 'Add random item',
          onPressed: onAdd,
        ),
        OrderButton(
          iconData: Icons.clear,
          title: 'Clear',
          onPressed: onClear,
        ),
      ],
    );
  }
}
