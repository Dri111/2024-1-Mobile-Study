// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

AbilityHolder _$AbilityHolderFromJson(Map<String, dynamic> json) =>
    AbilityHolder(
      ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$AbilityHolderToJson(AbilityHolder instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };

Form _$FormFromJson(Map<String, dynamic> json) => Form(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$FormToJson(Form instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

GameIndicies _$GameIndiciesFromJson(Map<String, dynamic> json) => GameIndicies(
      game_index: (json['game_index'] as num).toInt(),
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameIndiciesToJson(GameIndicies instance) =>
    <String, dynamic>{
      'game_index': instance.game_index,
      'version': instance.version,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionDetail _$VersionDetailFromJson(Map<String, dynamic> json) =>
    VersionDetail(
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
      rarity: (json['rarity'] as num).toInt(),
    );

Map<String, dynamic> _$VersionDetailToJson(VersionDetail instance) =>
    <String, dynamic>{
      'version': instance.version,
      'rarity': instance.rarity,
    };

HeldItem _$HeldItemFromJson(Map<String, dynamic> json) => HeldItem(
      item: Item.fromJson(json['item'] as Map<String, dynamic>),
      version_details: VersionDetail.fromJson(
          json['version_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HeldItemToJson(HeldItem instance) => <String, dynamic>{
      'item': instance.item,
      'version_details': instance.version_details,
    };

Move _$MoveFromJson(Map<String, dynamic> json) => Move(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionGroup _$VersionGroupFromJson(Map<String, dynamic> json) => VersionGroup(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionGroupToJson(VersionGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

MoveLearnMethod _$MoveLearnMethodFromJson(Map<String, dynamic> json) =>
    MoveLearnMethod(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$MoveLearnMethodToJson(MoveLearnMethod instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) =>
    VersionGroupDetail(
      level_learned_at: (json['level_learned_at'] as num).toInt(),
      move_learn_method: MoveLearnMethod.fromJson(
          json['move_learn_method'] as Map<String, dynamic>),
      version_group:
          VersionGroup.fromJson(json['version_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionGroupDetailToJson(VersionGroupDetail instance) =>
    <String, dynamic>{
      'level_learned_at': instance.level_learned_at,
      'move_learn_method': instance.move_learn_method,
      'version_group': instance.version_group,
    };

MovesHolder _$MovesHolderFromJson(Map<String, dynamic> json) => MovesHolder(
      move: Move.fromJson(json['move'] as Map<String, dynamic>),
      version_group_details: VersionGroupDetail.fromJson(
          json['version_group_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovesHolderToJson(MovesHolder instance) =>
    <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.version_group_details,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) => Species(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

SpriteSet _$SpriteSetFromJson(Map<String, dynamic> json) => SpriteSet(
      front_default: json['front_default'] as String,
    );

Map<String, dynamic> _$SpriteSetToJson(SpriteSet instance) => <String, dynamic>{
      'front_default': instance.front_default,
    };

Stat _$StatFromJson(Map<String, dynamic> json) => Stat(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

StatsHolder _$StatsHolderFromJson(Map<String, dynamic> json) => StatsHolder(
      base_stat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: Stat.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsHolderToJson(StatsHolder instance) =>
    <String, dynamic>{
      'base_stat': instance.base_stat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

TypesHolder _$TypesHolderFromJson(Map<String, dynamic> json) => TypesHolder(
      slot: (json['slot'] as num).toInt(),
      type: Type.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypesHolderToJson(TypesHolder instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

Cries _$CriesFromJson(Map<String, dynamic> json) => Cries(
      latest: json['latest'] as String,
      legacy: json['legacy'] as String,
    );

Map<String, dynamic> _$CriesToJson(Cries instance) => <String, dynamic>{
      'latest': instance.latest,
      'legacy': instance.legacy,
    };

PokemonInfo _$PokemonInfoFromJson(Map<String, dynamic> json) => PokemonInfo(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatsHolder.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: SpriteSet.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonInfoToJson(PokemonInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sprites': instance.sprites,
      'name': instance.name,
      'height': instance.height,
      'stats': instance.stats,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _PokemonService implements PokemonService {
  _PokemonService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://pokeapi.co/api/v2/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PokemonInfo> getPokemonInfo(String pokemonName) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PokemonInfo>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'pokemon/${pokemonName}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = PokemonInfo.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
