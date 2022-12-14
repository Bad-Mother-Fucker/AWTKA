import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class Bounceable extends StatefulWidget {
  const Bounceable({
    Key? key,
    required this.onTap,
    required this.child,
    this.onTapUp,
    this.onTapDown,
    this.onTapCancel,
    this.duration = const Duration(milliseconds: 50),
    this.reverseDuration = const Duration(milliseconds: 50),
    this.curve = Curves.decelerate,
    this.reverseCurve = Curves.decelerate,
    this.scaleFactor = 0.8,
    this.disabled = false,
    this.quickResponse = false,
    this.responseFirst = false,
    this.behavior,
  })  : assert(
          scaleFactor >= 0.0 && scaleFactor <= 1.0,
          'The valid range of scaleFactor is from 0.0 to 1.0.',
        ),
        super(key: key);

  /// Set it to `null` to disable `onTap`.
  final VoidCallback? onTap;
  final void Function(TapUpDetails)? onTapUp;
  final void Function(TapDownDetails)? onTapDown;
  final VoidCallback? onTapCancel;

  /// The reverse duration of the scaling animation when `onTapUp`.
  final Duration duration;

  /// The duration of the scaling animation when `onTapDown`.
  final Duration reverseDuration;

  /// The reverse curve of the scaling animation when `onTapUp`.
  final Curve curve;

  /// The curve of the scaling animation when `onTapDown`..
  final Curve? reverseCurve;

  /// The scale factor of the child widget. The valid range of `scaleFactor` is from `0.0` to `1.0`.
  final double scaleFactor;

  final Widget child;

  final bool disabled;

  final bool quickResponse;

  final bool responseFirst;

  final HitTestBehavior? behavior;

  @override
  _BounceableState createState() => _BounceableState();
}

class _BounceableState extends State<Bounceable>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: widget.duration,
    reverseDuration: widget.reverseDuration,
    value: 1.0,
    lowerBound: widget.scaleFactor,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: widget.curve,
    reverseCurve: widget.reverseCurve,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
  }

  Future<void> _onTap() async {
    // call func first and start animation after
    if (widget.responseFirst) {
      widget.onTap?.call();
      try {
        unawaited(HapticFeedback.lightImpact());
      } catch (e) {
        debugPrint('_onTap:: $e');
      }
      if (!widget.disabled) {
        await _controller.reverse();
        await _controller.forward();
      }
      return;
    }

    // only call func
    if (widget.quickResponse) {
      widget.onTap?.call();
      return;
    }

    // start animation then call func
    try {
      unawaited(HapticFeedback.lightImpact());
    } catch (e) {
      debugPrint('_onTap:: $e');
    }
    if (!widget.disabled) {
      await _controller.reverse();
      await _controller.forward();
    }
    widget.onTap?.call();
  }

  Future<void> _onTapUp(TapUpDetails details) async {
    await _controller.forward();
    if (!widget.disabled && widget.onTapUp != null) {
      widget.onTapUp!(details);
    }
  }

  Future<void> _onTapDown(TapDownDetails details) async {
    await _controller.reverse();
    if (!widget.disabled && widget.onTapDown != null) {
      widget.onTapDown!(details);
    }
  }

  Future<void> _onTapCancel() async {
    await _controller.forward();
    if (!widget.disabled && widget.onTapCancel != null) {
      widget.onTapCancel!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: TapDebouncer(
        onTap: () async {
          await _onTap();
          await Future<void>.delayed(const Duration(milliseconds: 100));
        },
        builder: (BuildContext context, TapDebouncerFunc? onTap) {
          return GestureDetector(
            behavior: widget.behavior ?? HitTestBehavior.opaque,
            onTapCancel: widget.onTapCancel != null ? _onTapCancel : null,
            onTapDown: widget.onTapDown != null ? _onTapDown : null,
            onTapUp: widget.onTapUp != null ? _onTapUp : null,
            onTap: onTap,
            child: ScaleTransition(
              scale: _animation,
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}
