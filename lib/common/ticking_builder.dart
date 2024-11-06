import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

typedef TickingBuilderCallback = Widget Function(BuildContext context, double time);

/// Initiates a ticker and updates the widget on each tick.
class TickingBuilder extends StatefulWidget {
  final TickingBuilderCallback builder;

  const TickingBuilder({required this.builder, super.key});

  @override
  State<TickingBuilder> createState() => _TickingBuilderState();
}

class _TickingBuilderState extends State<TickingBuilder> with SingleTickerProviderStateMixin {
  late final Ticker ticker;

  double _time = 0;

  void _notifyWidget() => setState(() {});

  @override
  void initState() {
    super.initState();

    // initialize and start ticker simultaneously
    debugPrint('ticker started...');
    ticker = createTicker(_handleTicker)..start();

    Future.delayed(const Duration(seconds: 10)).whenComplete(() {
      ticker.stop();
      debugPrint('ticker stopped.');
    });
  }

  @override
  void dispose() {
    // explicitly despose of the ticker when the widget is removed from the widget tree
    ticker.dispose();
    super.dispose();
  }

  void _handleTicker(Duration elapsed) {
    // update time and rebuild widget
    _time = elapsed.inMilliseconds.toDouble() / 1000.0;
    _notifyWidget();
  }

  @override
  Widget build(BuildContext context) => widget.builder.call(context, _time);
}
