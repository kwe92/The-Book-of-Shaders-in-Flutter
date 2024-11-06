import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/common/ticking_builder.dart';

typedef ReactiveWidgetBuilder = Widget Function(BuildContext context, double time, Size bounds);

class ReactiveWidget extends StatefulWidget {
  final ReactiveWidgetBuilder builder;

  const ReactiveWidget({required this.builder, super.key});

  @override
  State<ReactiveWidget> createState() => _ReactiveWidgetState();
}

class _ReactiveWidgetState extends State<ReactiveWidget> {
  @override
  Widget build(BuildContext context) {
    return TickingBuilder(
      builder: (_, time) {
        return LayoutBuilder(
          builder: (context, constraints) => widget.builder.call(
            context,
            time,
            constraints.biggest,
          ),
        );
      },
    );
  }
}
