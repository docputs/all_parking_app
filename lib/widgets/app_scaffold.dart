import 'package:all_parking/widgets/auth_status_listener.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget floatingActionButton;
  final bool scrollable;
  final Widget drawer;
  final Widget customAppBar;
  final List<Widget> actions;
  final EdgeInsets padding;

  const AppScaffold({
    Key key,
    this.title = '',
    this.body,
    this.floatingActionButton,
    this.scrollable = true,
    this.drawer,
    this.customAppBar,
    this.actions,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthStatusListener(
      child: Scaffold(
        drawer: drawer,
        appBar: customAppBar ?? AppBar(title: Text(title), actions: actions),
        body: Padding(
          padding: padding ?? const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: _buildDefaultScreenBody(),
        ),
        floatingActionButton: floatingActionButton,
      ),
    );
  }

  Widget _buildDefaultScreenBody() => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return scrollable
              ? SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                    child: body,
                  ),
                )
              : body;
        },
      );
}
