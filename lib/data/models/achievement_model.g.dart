// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAchievementModelCollection on Isar {
  IsarCollection<AchievementModel> get achievementModels => this.collection();
}

const AchievementModelSchema = CollectionSchema(
  name: r'AchievementModel',
  id: 846729571028374901,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.byte,
      enumMap: {
        r'firstAnimeCompleted': 0,
        r'firstMangaCompleted': 1,
        r'episodesWatchedThreshold': 2,
        r'chaptersReadThreshold': 3,
        r'streakThreshold': 4,
        r'animeLoggedThreshold': 5,
        r'mangaLoggedThreshold': 6,
      },
    ),
    r'unlockedAt': PropertySchema(
      id: 2,
      name: r'unlockedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _achievementModelEstimateSize,
  serialize: _achievementModelSerialize,
  deserialize: _achievementModelDeserialize,
  deserializeProp: _achievementModelDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'id': IndexSchema(
      id: -827394857102938475,
      name: r'id',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _achievementModelGetId,
  getLinks: _achievementModelGetLinks,
  attach: _achievementModelAttach,
  version: '3.1.0+1',
);

int _achievementModelEstimateSize(
  AchievementModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.id.length * 3;
  return bytesCount;
}

void _achievementModelSerialize(
  AchievementModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.id);
  writer.writeByte(offsets[1], object.type.index);
  writer.writeDateTime(offsets[2], object.unlockedAt);
}

AchievementModel _achievementModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AchievementModel();
  object.id = reader.readString(offsets[0]);
  object.isarId = id;
  object.type = _achievementModelGetEnum(reader.readByte(offsets[1]));
  object.unlockedAt = reader.readDateTime(offsets[2]);
  return object;
}

AchievementTypeModel _achievementModelGetEnum(int value) {
  switch (value) {
    case 0:
      return AchievementTypeModel.firstAnimeCompleted;
    case 1:
      return AchievementTypeModel.firstMangaCompleted;
    case 2:
      return AchievementTypeModel.episodesWatchedThreshold;
    case 3:
      return AchievementTypeModel.chaptersReadThreshold;
    case 4:
      return AchievementTypeModel.streakThreshold;
    case 5:
      return AchievementTypeModel.animeLoggedThreshold;
    case 6:
      return AchievementTypeModel.mangaLoggedThreshold;
    default:
      return AchievementTypeModel.firstAnimeCompleted;
  }
}

P _achievementModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (_achievementModelGetEnum(reader.readByte(offset))) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _achievementModelGetId(AchievementModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _achievementModelGetLinks(AchievementModel object) {
  return [];
}

void _achievementModelAttach(
    IsarCollection<dynamic> col, Id id, AchievementModel object) {
  object.isarId = id;
}

extension AchievementModelByIndex on IsarCollection<AchievementModel> {
  Future<AchievementModel?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  AchievementModel? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }
}

extension AchievementModelQueryWhereSort
    on QueryBuilder<AchievementModel, AchievementModel, QWhere> {
  QueryBuilder<AchievementModel, AchievementModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AchievementModelQueryWhere
    on QueryBuilder<AchievementModel, AchievementModel, QWhereClause> {
  QueryBuilder<AchievementModel, AchievementModel, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }
}

extension AchievementModelQueryFilter
    on QueryBuilder<AchievementModel, AchievementModel, QFilterCondition> {
  QueryBuilder<AchievementModel, AchievementModel, QAfterFilterCondition> idEqualTo(
      String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension AchievementModelQueryLinks
    on QueryBuilder<AchievementModel, AchievementModel, QFilterCondition> {}

extension AchievementModelQuerySortBy
    on QueryBuilder<AchievementModel, AchievementModel, QSortBy> {
  QueryBuilder<AchievementModel, AchievementModel, QAfterSortBy> sortByUnlockedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlockedAt', Sort.asc);
    });
  }
}

extension AchievementModelQuerySortThenBy
    on QueryBuilder<AchievementModel, AchievementModel, QSortThenBy> {
  QueryBuilder<AchievementModel, AchievementModel, QAfterSortBy> thenByUnlockedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlockedAt', Sort.asc);
    });
  }
}

extension AchievementModelQueryWhereDistinct
    on QueryBuilder<AchievementModel, AchievementModel, QDistinct> {
  QueryBuilder<AchievementModel, AchievementModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }
}

extension AchievementModelQueryProperty
    on QueryBuilder<AchievementModel, AchievementModel, QQueryProperty> {
  QueryBuilder<AchievementModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<AchievementModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
