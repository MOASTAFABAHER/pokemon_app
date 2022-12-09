import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/models/app_colors.dart';
import 'package:pokemon_app/screens/selected_pokemon_screen.dart';
import 'package:pokemon_app/utils/app_navigator.dart';

class PokemonContainer extends StatelessWidget {
  String? name;
  String? urlImage;
  var hight;
  var weight;
  var type;

  PokemonContainer(
      {required this.name,required this.type,
      required this.urlImage,
      required this.hight,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigator.appNavigator(
            context,
            SelectedPokemonnScreen(type: type,
                name: name!, height: hight, weigh: weight, image: urlImage));
      },
      child: Material(
        elevation: 6,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 200.w,
          height: 200.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(urlImage.toString()),
                          fit: BoxFit.fill))),
              SizedBox(
                height: 15.h,
              ),
              Text(
                name.toString(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
