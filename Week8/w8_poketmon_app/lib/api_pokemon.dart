import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
part 'api_pokemon.g.dart';

@JsonSerializable()
class Ability{
  Ability({
    required this.name, required this.url
});
  final String name, url;
  factory Ability.fromJson(Map<String, dynamic> json) => _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}
@JsonSerializable()
class AbilityHolder{
  AbilityHolder({
    required this.ability,
    required this.isHidden,
    required this.slot,
}) ;
  final Ability ability;
  final bool isHidden;
  final int slot;
  factory AbilityHolder.fromJson(Map<String,dynamic> json)=>_$AbilityHolderFromJson(json);

  Map<String, dynamic> toJson()=>_$AbilityHolderToJson(this);
}
@JsonSerializable()
class Form {
  Form({
    required this.name,
    required this.url,
});
  final String name, url;
    factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);

  Map<String, dynamic> toJson() => _$FormToJson(this);
}
@JsonSerializable()
class Version{
  Version({
    required this.name,
    required this.url
});
  final String name, url;
    factory Version.fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

  Map<String, dynamic> toJson() => _$VersionToJson(this);
}
@JsonSerializable()
class GameIndicies{
  GameIndicies({required this.game_index, required this.version});
  final int game_index;
  final Version version;
    factory GameIndicies.fromJson(Map<String, dynamic> json) => _$GameIndiciesFromJson(json);

  Map<String, dynamic> toJson() => _$GameIndiciesToJson(this);
}
@JsonSerializable()
class Item{
  Item({
    required this.name, required this.url
});
  final String name, url;
    factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
@JsonSerializable()
class VersionDetail{
  VersionDetail({
    required this.version, required this.rarity
});
  final Version version;
  final int rarity;
    factory VersionDetail.fromJson(Map<String, dynamic> json) => _$VersionDetailFromJson(json);

  Map<String, dynamic> toJson() => _$VersionDetailToJson(this);
}
@JsonSerializable()
class HeldItem{
  HeldItem({
    required this.item, required this.version_details
});
  final Item item;
  final VersionDetail version_details;
    factory HeldItem.fromJson(Map<String, dynamic> json) => _$HeldItemFromJson(json);

  Map<String, dynamic> toJson() => _$HeldItemToJson(this);
}
@JsonSerializable()
class Move{
  Move({
    required this.name, required this.url
  });
  final String name, url;
    factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);

  Map<String, dynamic> toJson() => _$MoveToJson(this);
}
@JsonSerializable()
class VersionGroup{
  VersionGroup({
    required this.name, required this.url
  });
  final String name, url;
    factory VersionGroup.fromJson(Map<String, dynamic> json) => _$VersionGroupFromJson(json);

  Map<String, dynamic> toJson() => _$VersionGroupToJson(this);
}
@JsonSerializable()
class MoveLearnMethod{
  MoveLearnMethod({
    required this.name, required this.url
  });
  final String name, url;
    factory MoveLearnMethod.fromJson(Map<String, dynamic> json) => _$MoveLearnMethodFromJson(json);

  Map<String, dynamic> toJson() => _$MoveLearnMethodToJson(this);
}
@JsonSerializable()
class VersionGroupDetail{
  VersionGroupDetail({required this.level_learned_at,required this.move_learn_method,required this.version_group});
  final int level_learned_at;
  final MoveLearnMethod move_learn_method;
  final VersionGroup version_group;
    factory VersionGroupDetail.fromJson(Map<String, dynamic> json) => _$VersionGroupDetailFromJson(json);

  Map<String, dynamic> toJson() => _$VersionGroupDetailToJson(this);
}
@JsonSerializable()
class MovesHolder{
  MovesHolder({
    required this.move,
    required this.version_group_details
});
 final Move move;
 final VersionGroupDetail version_group_details;
   factory MovesHolder.fromJson(Map<String, dynamic> json) => _$MovesHolderFromJson(json);

  Map<String, dynamic> toJson() => _$MovesHolderToJson(this);
}
@JsonSerializable()
class Species{
  Species({
    required this.name, required this.url
  });
  final String name, url;
    factory Species.fromJson(Map<String, dynamic> json) => _$SpeciesFromJson(json);

  Map<String, dynamic> toJson() => _$SpeciesToJson(this);
}
@JsonSerializable()
class SpriteSet{
  SpriteSet({
    required this.front_default
  });
  final String front_default;
  factory SpriteSet.fromJson(Map<String, dynamic> json) => _$SpriteSetFromJson(json);

  Map<String, dynamic> toJson() => _$SpriteSetToJson(this);
}
// @JsonSerializable()
// class SpriteSet{
//   SpriteSet({
//     required this.back_default,
//     required this.back_female,
//     required this.back_shiny,
//     required this.back_shiny_female,
//     required this.front_default,
//     required this.front_female,
//     required this.front_shiny,
//     required this.front_shiny_female
// });
//   final String back_default, back_female, back_shiny, back_shiny_female, front_default, front_female, front_shiny, front_shiny_female;
//     factory SpriteSet.fromJson(Map<String, dynamic> json) => _$SpriteSetFromJson(json);
//
//   Map<String, dynamic> toJson() => _$SpriteSetToJson(this);
// }
@JsonSerializable()
class Stat{
  Stat({
    required this.name, required this.url
  });
  final String name, url;
    factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

  Map<String, dynamic> toJson() => _$StatToJson(this);
}
@JsonSerializable()
class StatsHolder{
  StatsHolder({
    required this.base_stat,
    required this.effort,
    required this.stat
});
  final int base_stat, effort;
  final Stat stat;
    factory StatsHolder.fromJson(Map<String, dynamic> json) => _$StatsHolderFromJson(json);

  Map<String, dynamic> toJson() => _$StatsHolderToJson(this);
}
@JsonSerializable()
class Type{
  Type({
    required this.name, required this.url
  });
  final String name, url;
    factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}
@JsonSerializable()
class TypesHolder{
  TypesHolder({ required this.slot, required this.type
});
  final int slot;
  final Type type;
    factory TypesHolder.fromJson(Map<String, dynamic> json) => _$TypesHolderFromJson(json);

  Map<String, dynamic> toJson() => _$TypesHolderToJson(this);
}
@JsonSerializable()
class Cries{
  Cries({required this.latest, required this.legacy});
  final String latest, legacy;
  factory Cries.fromJson(Map<String, dynamic> json) => _$CriesFromJson(json);

  Map<String, dynamic> toJson() => _$CriesToJson(this);
}
// @JsonSerializable()
// class PokemonInfo{
//   PokemonInfo({
//     required this.id,
//   });
//   final int id;
//
//   factory PokemonInfo.fromJson(Map<String, dynamic> json) => _$PokemonInfoFromJson(json);
//
//   Map<String, dynamic> toJson() => _$PokemonInfoToJson(this);
// }
@JsonSerializable()
class PokemonInfo{
  PokemonInfo({
    required this.id,
    required this.name,
    required this.height,
    required this.stats,
    required this.sprites
});
  final int id;
  final SpriteSet sprites;
  final String name;
  final int height;
  final List<StatsHolder> stats;

  factory PokemonInfo.fromJson(Map<String, dynamic> json) => _$PokemonInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonInfoToJson(this);
}
// @JsonSerializable()
// class PokemonInfo{
//   PokemonInfo(this.abilities, this.base_experience, this.cries, this.forms, this.game_indices, this.height, this.held_items, this.id, this.is_default, this.location_area_encounters, this.moves, this.name, this.order, this.past_abilities, this.past_types, this.species, this.sprites, this.stats, this.types, this.weight);
//   final List<Ability> abilities;
//   final int base_experience;
//   final Cries cries;
//   final List<Form> forms;
//   final List<GameIndicies> game_indices;
//   final int height;
//   final List<HeldItem> held_items;
//   final int id;
//   final bool is_default;
//   final String location_area_encounters;
//   final List<MovesHolder> moves;
//   final String name;
//   final int order;
//   final List<Ability> past_abilities;
//   final List<Type>past_types;
//   final Species species;
//   final SpriteSet sprites;
//   final List<StatsHolder> stats;
//   final List<TypesHolder> types;
//   final int weight;
//   factory PokemonInfo.fromJson(Map<String, dynamic> json) => _$PokemonInfoFromJson(json);
//
//   Map<String, dynamic> toJson() => _$PokemonInfoToJson(this);
// }

@RestApi(baseUrl:"https://pokeapi.co/api/v2/")
abstract class PokemonService{
  factory PokemonService(Dio dio, {String baseUrl}) = _PokemonService;
  @GET('pokemon/{pokemonName}')
  Future<PokemonInfo> getPokemonInfo(
      @Path() String pokemonName
      );
}