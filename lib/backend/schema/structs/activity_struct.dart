// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityStruct extends BaseStruct {
  ActivityStruct({
    String? name,
    int? coins,
    bool? completed,
    DateTime? timeStart,
    DateTime? timeEnd,
  })  : _name = name,
        _coins = coins,
        _completed = completed,
        _timeStart = timeStart,
        _timeEnd = timeEnd;

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

  // "Completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  set completed(bool? val) => _completed = val;
  bool hasCompleted() => _completed != null;

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

  static ActivityStruct fromMap(Map<String, dynamic> data) => ActivityStruct(
        name: data['Name'] as String?,
        coins: castToType<int>(data['Coins']),
        completed: data['Completed'] as bool?,
        timeStart: data['TimeStart'] as DateTime?,
        timeEnd: data['TimeEnd'] as DateTime?,
      );

  static ActivityStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ActivityStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Coins': _coins,
        'Completed': _completed,
        'TimeStart': _timeStart,
        'TimeEnd': _timeEnd,
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
        'Completed': serializeParam(
          _completed,
          ParamType.bool,
        ),
        'TimeStart': serializeParam(
          _timeStart,
          ParamType.DateTime,
        ),
        'TimeEnd': serializeParam(
          _timeEnd,
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
        completed: deserializeParam(
          data['Completed'],
          ParamType.bool,
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
      );

  @override
  String toString() => 'ActivityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActivityStruct &&
        name == other.name &&
        coins == other.coins &&
        completed == other.completed &&
        timeStart == other.timeStart &&
        timeEnd == other.timeEnd;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, coins, completed, timeStart, timeEnd]);
}

ActivityStruct createActivityStruct({
  String? name,
  int? coins,
  bool? completed,
  DateTime? timeStart,
  DateTime? timeEnd,
}) =>
    ActivityStruct(
      name: name,
      coins: coins,
      completed: completed,
      timeStart: timeStart,
      timeEnd: timeEnd,
    );
