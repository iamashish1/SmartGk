import 'package:flutter/material.dart';
import 'package:matrimonial/widgets/common/matrimonial_scaffold.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MatrimonialScaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
