// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInspectionModelCollection on Isar {
  IsarCollection<InspectionModel> get inspectionModels => this.collection();
}

const InspectionModelSchema = CollectionSchema(
  name: r'InspectionModel',
  id: 5324242615507090096,
  properties: {
    r'capturedAt': PropertySchema(
      id: 0,
      name: r'capturedAt',
      type: IsarType.dateTime,
    ),
    r'condition': PropertySchema(
      id: 1,
      name: r'condition',
      type: IsarType.string,
    ),
    r'latitude': PropertySchema(
      id: 2,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 3,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'observation': PropertySchema(
      id: 4,
      name: r'observation',
      type: IsarType.string,
    ),
    r'photoPath': PropertySchema(
      id: 5,
      name: r'photoPath',
      type: IsarType.string,
    ),
    r'syncErrorMessage': PropertySchema(
      id: 6,
      name: r'syncErrorMessage',
      type: IsarType.string,
    ),
    r'syncStatus': PropertySchema(
      id: 7,
      name: r'syncStatus',
      type: IsarType.string,
    ),
    r'workOrderId': PropertySchema(
      id: 8,
      name: r'workOrderId',
      type: IsarType.string,
    )
  },
  estimateSize: _inspectionModelEstimateSize,
  serialize: _inspectionModelSerialize,
  deserialize: _inspectionModelDeserialize,
  deserializeProp: _inspectionModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'workOrderId': IndexSchema(
      id: 5773862016848061765,
      name: r'workOrderId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'workOrderId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'syncStatus': IndexSchema(
      id: 8239539375045684509,
      name: r'syncStatus',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'syncStatus',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _inspectionModelGetId,
  getLinks: _inspectionModelGetLinks,
  attach: _inspectionModelAttach,
  version: '3.1.0+1',
);

int _inspectionModelEstimateSize(
  InspectionModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.condition;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.photoPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.syncErrorMessage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.syncStatus.length * 3;
  {
    final value = object.workOrderId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _inspectionModelSerialize(
  InspectionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.capturedAt);
  writer.writeString(offsets[1], object.condition);
  writer.writeDouble(offsets[2], object.latitude);
  writer.writeDouble(offsets[3], object.longitude);
  writer.writeString(offsets[4], object.observation);
  writer.writeString(offsets[5], object.photoPath);
  writer.writeString(offsets[6], object.syncErrorMessage);
  writer.writeString(offsets[7], object.syncStatus);
  writer.writeString(offsets[8], object.workOrderId);
}

InspectionModel _inspectionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InspectionModel();
  object.capturedAt = reader.readDateTimeOrNull(offsets[0]);
  object.condition = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.latitude = reader.readDoubleOrNull(offsets[2]);
  object.longitude = reader.readDoubleOrNull(offsets[3]);
  object.observation = reader.readStringOrNull(offsets[4]);
  object.photoPath = reader.readStringOrNull(offsets[5]);
  object.syncErrorMessage = reader.readStringOrNull(offsets[6]);
  object.syncStatus = reader.readString(offsets[7]);
  object.workOrderId = reader.readStringOrNull(offsets[8]);
  return object;
}

P _inspectionModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _inspectionModelGetId(InspectionModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _inspectionModelGetLinks(InspectionModel object) {
  return [];
}

void _inspectionModelAttach(
    IsarCollection<dynamic> col, Id id, InspectionModel object) {
  object.id = id;
}

extension InspectionModelQueryWhereSort
    on QueryBuilder<InspectionModel, InspectionModel, QWhere> {
  QueryBuilder<InspectionModel, InspectionModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InspectionModelQueryWhere
    on QueryBuilder<InspectionModel, InspectionModel, QWhereClause> {
  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      workOrderIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'workOrderId',
        value: [null],
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      workOrderIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'workOrderId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      workOrderIdEqualTo(String? workOrderId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'workOrderId',
        value: [workOrderId],
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      workOrderIdNotEqualTo(String? workOrderId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'workOrderId',
              lower: [],
              upper: [workOrderId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'workOrderId',
              lower: [workOrderId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'workOrderId',
              lower: [workOrderId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'workOrderId',
              lower: [],
              upper: [workOrderId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      syncStatusEqualTo(String syncStatus) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'syncStatus',
        value: [syncStatus],
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterWhereClause>
      syncStatusNotEqualTo(String syncStatus) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncStatus',
              lower: [],
              upper: [syncStatus],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncStatus',
              lower: [syncStatus],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncStatus',
              lower: [syncStatus],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'syncStatus',
              lower: [],
              upper: [syncStatus],
              includeUpper: false,
            ));
      }
    });
  }
}

extension InspectionModelQueryFilter
    on QueryBuilder<InspectionModel, InspectionModel, QFilterCondition> {
  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      capturedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'capturedAt',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      capturedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'capturedAt',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      capturedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'capturedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      capturedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'capturedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      capturedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'capturedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      capturedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'capturedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'condition',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'condition',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'condition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'condition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      conditionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      latitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      latitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      latitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      latitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      longitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      longitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      longitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      longitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observation',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observation',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observation',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      observationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observation',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      photoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'syncErrorMessage',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'syncErrorMessage',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncErrorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncErrorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncErrorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncErrorMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'syncErrorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'syncErrorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'syncErrorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'syncErrorMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncErrorMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncErrorMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'syncErrorMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'syncStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'syncStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'syncStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'syncStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      syncStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'syncStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workOrderId',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workOrderId',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workOrderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workOrderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workOrderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workOrderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'workOrderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'workOrderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'workOrderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'workOrderId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workOrderId',
        value: '',
      ));
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterFilterCondition>
      workOrderIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'workOrderId',
        value: '',
      ));
    });
  }
}

extension InspectionModelQueryObject
    on QueryBuilder<InspectionModel, InspectionModel, QFilterCondition> {}

extension InspectionModelQueryLinks
    on QueryBuilder<InspectionModel, InspectionModel, QFilterCondition> {}

extension InspectionModelQuerySortBy
    on QueryBuilder<InspectionModel, InspectionModel, QSortBy> {
  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByCapturedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capturedAt', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByCapturedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capturedAt', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByObservation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByObservationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByPhotoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByPhotoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortBySyncErrorMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncErrorMessage', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortBySyncErrorMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncErrorMessage', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortBySyncStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncStatus', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortBySyncStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncStatus', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByWorkOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workOrderId', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      sortByWorkOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workOrderId', Sort.desc);
    });
  }
}

extension InspectionModelQuerySortThenBy
    on QueryBuilder<InspectionModel, InspectionModel, QSortThenBy> {
  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByCapturedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capturedAt', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByCapturedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capturedAt', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByObservation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByObservationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByPhotoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByPhotoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenBySyncErrorMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncErrorMessage', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenBySyncErrorMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncErrorMessage', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenBySyncStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncStatus', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenBySyncStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncStatus', Sort.desc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByWorkOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workOrderId', Sort.asc);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QAfterSortBy>
      thenByWorkOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workOrderId', Sort.desc);
    });
  }
}

extension InspectionModelQueryWhereDistinct
    on QueryBuilder<InspectionModel, InspectionModel, QDistinct> {
  QueryBuilder<InspectionModel, InspectionModel, QDistinct>
      distinctByCapturedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'capturedAt');
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct> distinctByCondition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'condition', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct>
      distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct>
      distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct>
      distinctByObservation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct> distinctByPhotoPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct>
      distinctBySyncErrorMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncErrorMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct>
      distinctBySyncStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncStatus', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InspectionModel, InspectionModel, QDistinct>
      distinctByWorkOrderId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workOrderId', caseSensitive: caseSensitive);
    });
  }
}

extension InspectionModelQueryProperty
    on QueryBuilder<InspectionModel, InspectionModel, QQueryProperty> {
  QueryBuilder<InspectionModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InspectionModel, DateTime?, QQueryOperations>
      capturedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'capturedAt');
    });
  }

  QueryBuilder<InspectionModel, String?, QQueryOperations> conditionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'condition');
    });
  }

  QueryBuilder<InspectionModel, double?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<InspectionModel, double?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<InspectionModel, String?, QQueryOperations>
      observationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observation');
    });
  }

  QueryBuilder<InspectionModel, String?, QQueryOperations> photoPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoPath');
    });
  }

  QueryBuilder<InspectionModel, String?, QQueryOperations>
      syncErrorMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncErrorMessage');
    });
  }

  QueryBuilder<InspectionModel, String, QQueryOperations> syncStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncStatus');
    });
  }

  QueryBuilder<InspectionModel, String?, QQueryOperations>
      workOrderIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workOrderId');
    });
  }
}
