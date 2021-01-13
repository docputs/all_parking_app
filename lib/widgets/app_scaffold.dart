import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget floatingActionButton;
  final bool scrollable;

  const AppScaffold({
    Key key,
    this.title,
    this.body,
    this.floatingActionButton,
    this.scrollable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: _buildDefaultScreenBody(),
      ),
      floatingActionButton: floatingActionButton,
    );
  }

  Widget _buildDefaultScreenBody() => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return scrollable
              ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                    child: body,
                  ),
                )
              : body;
        },
      );
}
