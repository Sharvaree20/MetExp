import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

Future<ApiCallResponse> getArtPieceCall({
  String objectID = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Art Piece',
    apiUrl:
        'https://collectionapi.metmuseum.org/public/collection/v1/objects/${objectID}',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getDepartmentsCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Departments',
    apiUrl:
        'https://collectionapi.metmuseum.org/public/collection/v1/departments',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> searchArtCall({
  String q = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Search Art',
    apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'q': q,
    },
    returnBody: true,
  );
}

Future<ApiCallResponse> departmentHighlightsCall({
  int departmentId,
  bool isHighlight = true,
  String q = '*',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Department Highlights',
    apiUrl: 'https://collectionapi.metmuseum.org/public/collection/v1/search',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'departmentId': departmentId,
      'isHighlight': isHighlight,
      'q': q,
    },
    returnBody: true,
  );
}

Future<ApiCallResponse> getNFTCollectionsCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'GetNFTCollections',
    apiUrl:
        'https://d63d3a98-e1df-4a69-96ba-c79eb441f59d.mock.pstmn.io/public/collection/v1/collections',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}
