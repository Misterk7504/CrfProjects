import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AuditTestCall {
  static Future<ApiCallResponse> call({
    String? pFlag = '',
    String? pPageval = '',
    String? pParaval = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AuditTest',
      apiUrl:
          'https://uatapp.manappuram.net/ManaServiceAuditApi/api/service/CommonAuditGet/$pFlag/$pPageval/$pParaval',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? catNum(dynamic response) => (getJsonField(
        response,
        r'''$[:].DEF''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? catName(dynamic response) => (getJsonField(
        response,
        r'''$[:].LAB''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AuditTestQuestionsCall {
  static Future<ApiCallResponse> call({
    String? pFlag = '',
    String? pPageval = '',
    String? pParaval = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AuditTest Questions',
      apiUrl:
          'https://uatapp.manappuram.net/ManaServiceAuditApi/api/service/CommonAuditGet/$pFlag/$pPageval/$pParaval',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'CatId': pPageval,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? catQuestNum(dynamic response) => (getJsonField(
        response,
        r'''$[:].DEF''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? catQuestName(dynamic response) => (getJsonField(
        response,
        r'''$[:].LAB''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AuditTestRiskCatCall {
  static Future<ApiCallResponse> call({
    String? pFlag = '',
    String? pPageval = '',
    String? pParaval = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AuditTest RiskCat',
      apiUrl:
          'https://uatapp.manappuram.net/ManaServiceAuditApi/api/service/CommonAuditGet/$pFlag/$pPageval/$pParaval',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'CatId': pPageval,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? catRiskNum(dynamic response) => (getJsonField(
        response,
        r'''$[:].STATUS_ID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? catRiskName(dynamic response) => (getJsonField(
        response,
        r'''$[:].DESCRIPTION''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AuditTestAnswersCall {
  static Future<ApiCallResponse> call({
    String? pFlag = '',
    String? pPageval = '',
    String? pParaval = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AuditTest Answers',
      apiUrl:
          'https://uatapp.manappuram.net/ManaServiceAuditApi/api/service/CommonAuditGet/$pFlag/$pPageval/$pParaval',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'CatId': pPageval,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? catAnswersNum(dynamic response) => (getJsonField(
        response,
        r'''$[:].DEF''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? catAnswersName(dynamic response) => (getJsonField(
        response,
        r'''$[:].LAB''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AuditPostCall {
  static Future<ApiCallResponse> call({
    String? pFlag = '',
    String? pPageval = '',
    String? pParaval = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_flag": "$pFlag",
  "p_pageval": "$pPageval",
  "p_paraval": "$pParaval"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AuditPost',
      apiUrl:
          'https://uatapp.manappuram.net/ManaServiceAuditApi/api/service/CommonAuditPost',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
