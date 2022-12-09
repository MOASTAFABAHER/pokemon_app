import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/components/container_text.dart';
import 'package:pokemon_app/components/custom_two_text.dart';
import 'package:pokemon_app/models/app_colors.dart';

class SelectedPokemonnScreen extends StatelessWidget {
  String name;
  var height;
  var weigh;
  String? image;
  var type;

  SelectedPokemonnScreen(
      {required this.name,
      required this.type,
      required this.height,
      required this.weigh,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCOlors.krGreeColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(name),
        elevation: 0,
        backgroundColor: AppCOlors.krGreeColor,
      ),
      body: Center(
        child: Container(
          width: 300.w,
          height: 400.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppCOlors.krWhiteColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(image.toString()),
                radius: 90,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTwoText(dataOne: 'Height', dataTwo: height),
              SizedBox(
                height: 20.h,
              ),
              CustomTwoText(dataOne: 'Weight', dataTwo: weigh),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Type',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerText(data: type[0], color: AppCOlors.krOrangeColor),
                  SizedBox(
                    width: 30.w,
                  ),
                  ContainerText(data: type[1], color: AppCOlors.krOrangeColor),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
