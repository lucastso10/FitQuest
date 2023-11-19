// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityStruct extends BaseStruct {
  ActivityStruct({
    String? name,
    int? coins,
    DateTime? timeStart,
    DateTime? timeEnd,
    DateTime? date,
  })  : _name = name,
        _coins = coins,
        _timeStart = timeStart,
        _timeEnd = timeEnd,
        _date = date;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  set coins(int? val) => _coins = val;
  void incrementCoins(int amount) => _coins = coins + amount;
  bool hasCoins() => _coins != null;

  // "TimeStart" field.
  DateTime? _timeStart;
  DateTime? get timeStart => _timeStart;
  set timeStart(DateTime? val) => _timeStart = val;
  bool hasTimeStart() => _timeStart != null;

  // "TimeEnd" field.
  DateTime? _timeEnd;
  DateTime? get timeEnd => _timeEnd;
  set timeEnd(DateTime? val) => _timeEnd = val;
  bool hasTimeEnd() => _timeEnd != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  static ActivityStruct fromMap(Map<String, dynamic> data) => ActivityStruct(
        name: data['Name'] as String?,
        coins: castToType<int>(data['Coins']),
        timeStart: data['TimeStart'] as DateTime?,
        timeEnd: data['TimeEnd'] as DateTime?,
        date: data['date'] as DateTime?,
      );

  static ActivityStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ActivityStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Coins': _coins,
        'TimeStart': _timeStart,
        'TimeEnd': _timeEnd,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Coins': serializeParam(
          _coins,
          ParamType.int,
        ),
        'TimeStart': serializeParam(
          _timeStart,
          ParamType.DateTime,
        ),
        'TimeEnd': serializeParam(
          _timeEnd,
          ParamType.DateTime,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ActivityStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActivityStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        coins: deserializeParam(
          data['Coins'],
          ParamType.int,
          false,
        ),
        timeStart: deserializeParam(
          data['TimeStart'],
          ParamType.DateTime,
          false,
        ),
        timeEnd: deserializeParam(
          data['TimeEnd'],
          ParamType.DateTime,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActivityStruct &&
        name == other.name &&
        coins == other.coins &&
        timeStart == other.timeStart &&
        timeEnd == other.timeEnd &&
        date == other.date;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, coins, timeStart, timeEnd, date]);
}

ActivityStruct createActivityStruct({
  String? name,
  int? coins,
  DateTime? timeStart,
  DateTime? timeEnd,
  DateTime? date,
}) =>
    ActivityStruct(
      name: name,
      coins: coins,
      timeStart: timeStart,
      timeEnd: timeEnd,
      date: date,
    );
