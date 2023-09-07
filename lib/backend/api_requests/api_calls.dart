import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SnackyGroup Group Code

class SnackyGroupGroup {
  static String baseUrl = 'https://restcountries.com/v3.1/';
  static Map<String, String> headers = {};
  static CapitalCityCall capitalCityCall = CapitalCityCall();
}

class CapitalCityCall {
  Future<ApiCallResponse> call({
    String? capital = 'Abuja',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CapitalCity',
      apiUrl: '${SnackyGroupGroup.baseUrl}capital/${capital}',
      callType: ApiCallType.GET,
      headers: {
        ...SnackyGroupGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].translations.bre.common''',
      );
  dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$[:].flag''',
      );
  dynamic mapLink(dynamic response) => getJsonField(
        response,
        r'''$[:].maps''',
      );
  dynamic isIndependent(dynamic response) => getJsonField(
        response,
        r'''$[:].independent''',
      );
  dynamic isUNMember(dynamic response) => getJsonField(
        response,
        r'''$[:].unMember''',
      );
  dynamic shortCode(dynamic response) => getJsonField(
        response,
        r'''$[:].cca3''',
      );
  dynamic twoShortCode(dynamic response) => getJsonField(
        response,
        r'''$[:].cca2''',
      );
  dynamic fullName(dynamic response) => getJsonField(
        response,
        r'''$[:].name.official''',
      );
}

/// End SnackyGroup Group Code

class GetAllCountriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllCountries',
      apiUrl: 'https://restcountries.com/v3.1/lang/spanish',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CapitalCitiesCall {
  static Future<ApiCallResponse> call({
    String? capital = 'Abuja',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Capital Cities',
      apiUrl: 'https://restcountries.com/v3.1/capital/${capital}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
