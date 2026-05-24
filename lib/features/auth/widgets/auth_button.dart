import 'package:flutter/cupertino.dart';

import '../../../core/widgets/default_button.dart';

class AuthButton extends StatelessWidget {

  final String text;

  final VoidCallback onPressed;

  const AuthButton({

    super.key,

    required this.text,

    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return DefaultButton(

      text: text,

      onPressed: onPressed,
    );
  }
}