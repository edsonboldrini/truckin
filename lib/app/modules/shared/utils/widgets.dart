import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:truckin/app/modules/shared/utils/styles.dart';

class CustomRaisedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() function;

  const CustomRaisedButton({Key key, this.text, this.color, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: function,
      color: color,
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(8.0),
      ),
    );
  }
}

class CustomLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(CustomColors.orangePrimary),
    );
  }
}
