// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
import 'dart:core';
import 'main.dart' as prefix3;
import 'package:gtd/model/task.dart' as prefix1;
import 'package:gtd/model/user.dart' as prefix2;
import 'package:json_annotation/src/json_serializable.dart' as prefix4;
import 'package:reflection/src/model/reflectable_model.dart' as prefix0;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: unused_import

import 'package:reflectable/mirrors.dart' as m;
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.ReflectorModel(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Task',
            r'.Task',
            134217735,
            0,
            const prefix0.ReflectorModel(),
            const <int>[
              0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              17,
              46,
              47,
              48
            ],
            const <int>[
              49,
              50,
              51,
              52,
              53,
              17,
              18,
              19,
              20,
              21,
              22,
              23,
              24,
              25,
              26,
              27,
              28,
              29,
              30,
              31,
              32,
              33,
              34,
              35,
              36,
              37,
              38,
              39,
              40,
              41,
              42,
              43,
              44,
              45
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => (
                      {id,
                      name,
                      repeatType,
                      jsonWeek,
                      weekRandom,
                      jsonMonth,
                      monthRandom,
                      needRemind,
                      alarmIndex,
                      jsonRemind,
                      createTime,
                      finishTime,
                      finishType,
                      dailyTimes}) =>
                  b
                      ? prefix1.Task(
                          alarmIndex: alarmIndex,
                          createTime: createTime,
                          dailyTimes: dailyTimes,
                          finishTime: finishTime,
                          finishType: finishType,
                          id: id,
                          jsonMonth: jsonMonth,
                          jsonRemind: jsonRemind,
                          jsonWeek: jsonWeek,
                          monthRandom: monthRandom,
                          name: name,
                          needRemind: needRemind,
                          repeatType: repeatType,
                          weekRandom: weekRandom)
                      : null,
              r'fromJson': (bool b) =>
                  (json) => b ? prefix1.Task.fromJson(json) : null,
              r'defaultValue': (bool b) =>
                  () => b ? prefix1.Task.defaultValue() : null
            },
            0,
            0,
            const <int>[],
            const <Object>[
              prefix3.reflectorModel,
              const prefix4.JsonSerializable()
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'User',
            r'.User',
            134217735,
            1,
            const prefix0.ReflectorModel(),
            const <int>[14, 15, 16, 54, 55, 62, 63],
            const <int>[49, 55, 51, 52, 53, 54, 56, 57, 58, 59, 60, 61],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => ({id, name, email}) =>
                  b ? prefix2.User(email: email, id: id, name: name) : null,
              r'fromJson': (bool b) =>
                  (json) => b ? prefix2.User.fromJson(json) : null
            },
            1,
            1,
            const <int>[],
            const <Object>[
              prefix3.reflectorModel,
              const prefix4.JsonSerializable()
            ],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'id', 67239941, 0, const prefix0.ReflectorModel(),
            -1, 2, 2, const <int>[], const []),
        r.VariableMirrorImpl(r'name', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 2, 2, const <int>[], const []),
        r.VariableMirrorImpl(r'repeatType', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'jsonWeek', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 2, 2, const <int>[], const []),
        r.VariableMirrorImpl(r'weekRandom', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'jsonMonth', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 2, 2, const <int>[], const []),
        r.VariableMirrorImpl(r'monthRandom', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'needRemind', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'alarmIndex', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'jsonRemind', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 2, 2, const <int>[], const []),
        r.VariableMirrorImpl(r'createTime', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'finishTime', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'finishType', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'dailyTimes', 67239941, 0,
            const prefix0.ReflectorModel(), -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'id', 67239941, 1, const prefix0.ReflectorModel(),
            -1, 3, 3, const <int>[], const []),
        r.VariableMirrorImpl(r'name', 67239941, 1,
            const prefix0.ReflectorModel(), -1, 2, 2, const <int>[], const []),
        r.VariableMirrorImpl(r'email', 67239941, 1,
            const prefix0.ReflectorModel(), -1, 2, 2, const <int>[], const []),
        r.MethodMirrorImpl(
            r'toJson',
            35651586,
            0,
            -1,
            4,
            5,
            null,
            const <int>[],
            const prefix0.ReflectorModel(),
            const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 0, 18),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 0, 19),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 1, 20),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 1, 21),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 2, 22),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 2, 23),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 3, 24),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 3, 25),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 4, 26),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 4, 27),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 5, 28),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 5, 29),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 6, 30),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 6, 31),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 7, 32),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 7, 33),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 8, 34),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 8, 35),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 9, 36),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 9, 37),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 10, 38),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 10, 39),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 11, 40),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 11, 41),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 12, 42),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 12, 43),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 13, 44),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 13, 45),
        r.MethodMirrorImpl(
            r'',
            0,
            0,
            -1,
            0,
            0,
            const <int>[],
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
            const prefix0.ReflectorModel(),
            const []),
        r.MethodMirrorImpl(r'fromJson', 1, 0, -1, 0, 0, const <int>[],
            const <int>[14], const prefix0.ReflectorModel(), const []),
        r.MethodMirrorImpl(r'defaultValue', 0, 0, -1, 0, 0, const <int>[],
            const <int>[], const prefix0.ReflectorModel(), const []),
        r.MethodMirrorImpl(r'==', 2097154, -1, -1, 6, 6, const <int>[],
            const <int>[29], const prefix0.ReflectorModel(), const []),
        r.MethodMirrorImpl(r'toString', 2097154, -1, -1, 7, 7, const <int>[],
            const <int>[], const prefix0.ReflectorModel(), const []),
        r.MethodMirrorImpl(
            r'noSuchMethod',
            524290,
            -1,
            -1,
            -1,
            -1,
            const <int>[],
            const <int>[30],
            const prefix0.ReflectorModel(),
            const []),
        r.MethodMirrorImpl(r'hashCode', 2097155, -1, -1, 8, 8, const <int>[],
            const <int>[], const prefix0.ReflectorModel(), const []),
        r.MethodMirrorImpl(r'runtimeType', 2097155, -1, -1, 9, 9, const <int>[],
            const <int>[], const prefix0.ReflectorModel(), const []),
        r.MethodMirrorImpl(
            r'toJson',
            35651586,
            1,
            -1,
            4,
            5,
            null,
            const <int>[],
            const prefix0.ReflectorModel(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'toString',
            2097154,
            1,
            -1,
            7,
            7,
            const <int>[],
            const <int>[],
            const prefix0.ReflectorModel(),
            const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 14, 56),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 14, 57),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 15, 58),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 15, 59),
        r.ImplicitGetterMirrorImpl(const prefix0.ReflectorModel(), 16, 60),
        r.ImplicitSetterMirrorImpl(const prefix0.ReflectorModel(), 16, 61),
        r.MethodMirrorImpl(r'', 0, 1, -1, 1, 1, const <int>[],
            const <int>[31, 32, 33], const prefix0.ReflectorModel(), const []),
        r.MethodMirrorImpl(r'fromJson', 1, 1, -1, 1, 1, const <int>[],
            const <int>[34], const prefix0.ReflectorModel(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'id',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #id),
        r.ParameterMirrorImpl(
            r'name',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #name),
        r.ParameterMirrorImpl(
            r'repeatType',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #repeatType),
        r.ParameterMirrorImpl(
            r'jsonWeek',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #jsonWeek),
        r.ParameterMirrorImpl(
            r'weekRandom',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #weekRandom),
        r.ParameterMirrorImpl(
            r'jsonMonth',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #jsonMonth),
        r.ParameterMirrorImpl(
            r'monthRandom',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #monthRandom),
        r.ParameterMirrorImpl(
            r'needRemind',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #needRemind),
        r.ParameterMirrorImpl(
            r'alarmIndex',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #alarmIndex),
        r.ParameterMirrorImpl(
            r'jsonRemind',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #jsonRemind),
        r.ParameterMirrorImpl(
            r'createTime',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #createTime),
        r.ParameterMirrorImpl(
            r'finishTime',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #finishTime),
        r.ParameterMirrorImpl(
            r'finishType',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #finishType),
        r.ParameterMirrorImpl(
            r'dailyTimes',
            67253254,
            46,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #dailyTimes),
        r.ParameterMirrorImpl(
            r'json',
            151126022,
            47,
            const prefix0.ReflectorModel(),
            -1,
            4,
            5,
            null,
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_id',
            67240038,
            19,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_name',
            67240038,
            21,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_repeatType',
            67240038,
            23,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_jsonWeek',
            67240038,
            25,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_weekRandom',
            67240038,
            27,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_jsonMonth',
            67240038,
            29,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_monthRandom',
            67240038,
            31,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_needRemind',
            67240038,
            33,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_alarmIndex',
            67240038,
            35,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_jsonRemind',
            67240038,
            37,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_createTime',
            67240038,
            39,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_finishTime',
            67240038,
            41,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_finishType',
            67240038,
            43,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_dailyTimes',
            67240038,
            45,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'other',
            134348806,
            49,
            const prefix0.ReflectorModel(),
            -1,
            10,
            10,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            134348806,
            51,
            const prefix0.ReflectorModel(),
            -1,
            11,
            11,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'id',
            67253254,
            62,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            #id),
        r.ParameterMirrorImpl(
            r'name',
            67253254,
            62,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #name),
        r.ParameterMirrorImpl(
            r'email',
            67253254,
            62,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            #email),
        r.ParameterMirrorImpl(
            r'json',
            151126022,
            63,
            const prefix0.ReflectorModel(),
            -1,
            4,
            5,
            null,
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_id',
            67240038,
            57,
            const prefix0.ReflectorModel(),
            -1,
            3,
            3,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_name',
            67240038,
            59,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'_email',
            67240038,
            61,
            const prefix0.ReflectorModel(),
            -1,
            2,
            2,
            const <int>[],
            const [],
            null,
            null)
      ],
      <Type>[
        prefix1.Task,
        prefix2.User,
        String,
        int,
        const m.TypeValue<Map<String, dynamic>>().type,
        Map,
        bool,
        String,
        int,
        Type,
        Object,
        Invocation
      ],
      2,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'toJson': (dynamic instance) => instance.toJson,
        r'id': (dynamic instance) => instance.id,
        r'name': (dynamic instance) => instance.name,
        r'repeatType': (dynamic instance) => instance.repeatType,
        r'jsonWeek': (dynamic instance) => instance.jsonWeek,
        r'weekRandom': (dynamic instance) => instance.weekRandom,
        r'jsonMonth': (dynamic instance) => instance.jsonMonth,
        r'monthRandom': (dynamic instance) => instance.monthRandom,
        r'needRemind': (dynamic instance) => instance.needRemind,
        r'alarmIndex': (dynamic instance) => instance.alarmIndex,
        r'jsonRemind': (dynamic instance) => instance.jsonRemind,
        r'createTime': (dynamic instance) => instance.createTime,
        r'finishTime': (dynamic instance) => instance.finishTime,
        r'finishType': (dynamic instance) => instance.finishType,
        r'dailyTimes': (dynamic instance) => instance.dailyTimes,
        r'email': (dynamic instance) => instance.email
      },
      {
        r'id=': (dynamic instance, value) => instance.id = value,
        r'name=': (dynamic instance, value) => instance.name = value,
        r'repeatType=': (dynamic instance, value) =>
            instance.repeatType = value,
        r'jsonWeek=': (dynamic instance, value) => instance.jsonWeek = value,
        r'weekRandom=': (dynamic instance, value) =>
            instance.weekRandom = value,
        r'jsonMonth=': (dynamic instance, value) => instance.jsonMonth = value,
        r'monthRandom=': (dynamic instance, value) =>
            instance.monthRandom = value,
        r'needRemind=': (dynamic instance, value) =>
            instance.needRemind = value,
        r'alarmIndex=': (dynamic instance, value) =>
            instance.alarmIndex = value,
        r'jsonRemind=': (dynamic instance, value) =>
            instance.jsonRemind = value,
        r'createTime=': (dynamic instance, value) =>
            instance.createTime = value,
        r'finishTime=': (dynamic instance, value) =>
            instance.finishTime = value,
        r'finishType=': (dynamic instance, value) =>
            instance.finishType = value,
        r'dailyTimes=': (dynamic instance, value) =>
            instance.dailyTimes = value,
        r'email=': (dynamic instance, value) => instance.email = value
      },
      <m.LibraryMirror>[
        r.LibraryMirrorImpl(
            r'',
            Uri.parse('package:gtd/model/task.dart'),
            const prefix0.ReflectorModel(),
            const <int>[],
            {},
            {},
            const [],
            null),
        r.LibraryMirrorImpl(
            r'',
            Uri.parse('package:gtd/model/user.dart'),
            const prefix0.ReflectorModel(),
            const <int>[],
            {},
            {},
            const [],
            null)
      ],
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}