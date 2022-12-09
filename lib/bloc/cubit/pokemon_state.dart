part of 'pokemon_cubit.dart';

@immutable
abstract class PokemonState {}

class PokemonInitial extends PokemonState {}
class PokemonGetLoadingState extends PokemonState {}
class PokemonGetSucssesState extends PokemonState {}
class PokemonGetErrorState extends PokemonState {}
