import 'package:dashboard_example/constants/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(
          RouteConstants.detailsScreen,
          params: {'id': '123'},
        ),
      ),
      body: Center(
        child: SelectableText('Home Screen'),
      ),
    );
  }
}
