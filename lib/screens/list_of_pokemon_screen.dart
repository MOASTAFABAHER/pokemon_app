import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/bloc/cubit/pokemon_cubit.dart';
import 'package:pokemon_app/components/pkemon_contianer.dart';
import 'package:pokemon_app/models/app_colors.dart';

class ListOFPokemonScreen extends StatelessWidget {
  const ListOFPokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppCOlors.krGreeColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text('Pokemon App'.toUpperCase()),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => PokemonCubit()..getPokemonList(),
        child: BlocConsumer<PokemonCubit, PokemonState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = PokemonCubit.get(context);
            return Padding(
                padding: const EdgeInsets.all(16),
                child: state is PokemonGetSucssesState
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemCount: cubit.request?.pokemon?.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return PokemonContainer(
                            type: cubit.request!.pokemon?[index].type,
                            hight: cubit.request!.pokemon?[index].height,
                            weight: cubit.request!.pokemon?[index].weight,
                            name: cubit.request?.pokemon?[index].name,
                            urlImage: cubit.request?.pokemon?[index].img,
                          );
                        })
                    : Center(
                        child: CircularProgressIndicator(
                        color: AppCOlors.krGreeColor,
                      )));
          },
        ),
      ),
    );
  }
}
