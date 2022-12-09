import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/models/app_colors.dart';

class ContainerText extends StatelessWidget {
  String data;
  var color;

  ContainerText({required this.data, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Center(
        child: Text(
          data,
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w200,
              color: AppCOlors.krWhiteColor),
        ),
      ),
    );
  }
}
