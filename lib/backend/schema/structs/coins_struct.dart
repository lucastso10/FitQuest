// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoinsStruct extends BaseStruct {
  CoinsStruct({
    int? coin,
  }) : _coin = coin;

  // "Coin" field.
  int? _coin;
  int get coin => _coin ?? 0;
  set coin(int? val) => _coin = val;
  void incrementCoin(int amount) => _coin = coin + amount;
  bool hasCoin() => _coin != null;

  static CoinsStruct fromMap(Map<String, dynamic> data) => CoinsStruct(
        coin: castToType<int>(data['Coin']),
      );

  static CoinsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CoinsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Coin': _coin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Coin': serializeParam(
          _coin,
          ParamType.int,
        ),
      }.withoutNulls;

  static CoinsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CoinsStruct(
        coin: deserializeParam(
          data['Coin'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CoinsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CoinsStruct && coin == other.coin;
  }

  @override
  int get hashCode => const ListEquality().hash([coin]);
}

CoinsStruct createCoinsStruct({
  int? coin,
}) =>
    CoinsStruct(
      coin: coin,
    );
