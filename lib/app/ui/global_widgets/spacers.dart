import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

double _defaultHorizontalSpace = 3.w;
double _defaultVeticalSpace = 3.h;

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer({Key? key, this.space}) : super(key: key);
  final double? space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space ?? _defaultVeticalSpace,
    );
  }
}

class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer({Key? key, this.space}) : super(key: key);
  final double? space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space ?? _defaultHorizontalSpace,
    );
  }
}
