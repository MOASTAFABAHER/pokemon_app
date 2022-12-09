import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTwoText extends StatelessWidget {
  String dataOne;
  String dataTwo;

  CustomTwoText({required this.dataOne, required this.dataTwo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$dataOne:',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 30.w,
        ),
        Text(
          dataTwo,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
