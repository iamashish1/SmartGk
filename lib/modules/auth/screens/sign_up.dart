import 'package:flutter/material.dart';
import 'package:matrimonial/widgets/common/matrimonial_scaffold.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MatrimonialScaffold(
      shouldUseAppBar: false,
      body: Center(
        child: Text(
          'Sign Up',
        ),
      ),
    );
  }
}
