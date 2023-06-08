import 'dart:convert';

import 'package:fhir/dstu2.dart';
import 'package:fhir_at_rest/dstu2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../at_fhir_requests.dart';

part 'at_dstu2_fhir_request.freezed.dart';
part 'at_dstu2_fhir_request.g.dart';

@freezed
class AtDstu2FhirRequest with AtFhirRequest, _$AtDstu2FhirRequest {
  const AtDstu2FhirRequest._();

  const factory AtDstu2FhirRequest({
    required AtFhirRequestMethod method,
    required Uri url,
    @Default({}) Map<String, String> headers,
    Resource? resource,
  }) = _AtDstu2FhirRequest;

  const factory AtDstu2FhirRequest.error({
    AtFhirRequestMethod? method,
    Uri? url,
    @Default({}) Map<String, String> headers,
    Resource? resource,
    required OperationOutcome operationOutcome,
  }) = _AtDstu2RequestError;

  factory AtDstu2FhirRequest.fromJson(Map<String, dynamic> json) =>
      _$AtDstu2FhirRequestFromJson(json);

  /// Acts like a constructor, returns a [AtDstu2FhirRequest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AtDstu2FhirRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AtDstu2FhirRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  factory AtDstu2FhirRequest.fromFhirRequest(
    FhirRequest request,
    Map<String, String> headers,
    String accept,
  ) {
    /// encodeParameters
    String _encodeParam(String value, {bool join = true}) =>
        '${join ? '&' : ''}$value';

    /// specifies the mode
    String _mode(FhirRequest request, {bool join = false}) => request.maybeMap(
        capabilities: (FhirCapabilitiesRequest request) =>
            _encodeParam('mode=${enumToString(request.mode)}', join: join),
        orElse: () => '');

    /// specifies the format
    String _format(FhirRequest request, {bool join = false}) => request
        .maybeMap(
            capabilities: (FhirCapabilitiesRequest request) =>
                _encodeParam('_format=${request.format}'),
            orElse: () =>
                _encodeParam('_format=${request.format}', join: join));

    /// assigns if you want it pretty
    String _pretty(FhirRequest request, {bool join = true}) =>
        _encodeParam('_pretty=${request.pretty}', join: join);

    /// assigns if you want the summary
    String _summary(FhirRequest request, {bool join = true}) =>
        request.summary != Summary.none
            ? _encodeParam('_summary=${enumToString(request.summary)}',
                join: join)
            : '';

    /// places any elements
    String _urlElements(FhirRequest request, {bool join = true}) => request
            .elements.isNotEmpty
        ? _encodeParam('_elements=${request.elements.join(",")}', join: join)
        : '';

    /// places any parameters
    String _urlParameters(List<String> parameters, {bool join = true}) {
      if (parameters.isEmpty) {
        return '';
      } else {
        String parametersString = '';
        for (int i = 0; i < parameters.length; i++) {
          parametersString += _encodeParam(parameters[i], join: i != 0 || join);
        }
        return parametersString;
      }
    }

    /// union method to get the url
    String _url(FhirRequest request) => request.map(
          /// READ
          read: (FhirReadRequest request) =>
              '${request.base}/${enumToString(request.type)}/${request.fhirId}',

          /// VREAD
          vRead: (FhirVReadRequest request) =>
              '${request.base}/${enumToString(request.type)}/${request.fhirId}/_history/${request.vid}',

          /// UPDATE
          update: (FhirUpdateRequest request) =>
              '${request.base}/${request.resource.resourceTypeString}/${request.resource.fhirId}',

          /// PATCH
          patch: (FhirPatchRequest request) =>
              '${request.base}/${request.resource.resourceTypeString}/${request.resource.fhirId}',

          /// DELETE
          delete: (FhirDeleteRequest request) =>
              '${request.base}/${enumToString(request.type)}/${request.fhirId}',

          /// CREATE
          create: (FhirCreateRequest request) =>
              '${request.base}/${enumToString(request.resource.resourceTypeString)}',

          /// SEARCH
          search: (FhirSearchRequest request) =>
              '${request.base}/${enumToString(request.type)}'
              '${request.restfulRequest == RestfulRequest.post_ ? '/_search' : ''}',

          /// SEARCH-ALL
          searchAll: (FhirSearchAllRequest request) => '${request.base}',

          /// CAPABILITIES
          capabilities: (FhirCapabilitiesRequest request) =>
              '${request.base}/metadata',

          /// BATCH / TRANSACTION
          transaction: (FhirTransactionRequest request) => '${request.base}',
          batch: (FhirBatchRequest request) => '${request.base}',

          /// HISTORY
          history: (FhirHistoryRequest request) =>
              '${request.base}/${enumToString(request.type)}/${request.fhirId}/_history',

          /// HISTORY-TYPE
          historyType: (FhirHistoryTypeRequest request) =>
              '${request.base}/${enumToString(request.type)}/_history',

          /// HISTORY-ALL
          historyAll: (FhirHistoryAllRequest request) =>
              '${request.base}/_history',

          /// OPERATION
          operation: (FhirOperationRequest request) => '${request.base}/'
              '${request.type != null ? "${enumToString(request.type)}/" : ''}'
              '${request.type != null && request.fhirId != null ? "${enumToString(request.fhirId)}/" : ''}'
              '\$${request.operation}',
        );

    /// _hxParameters
    /// private method for return a list of the history parameters for history
    /// requests
    List<String> _hxParameters(
      /// [count] - The maximum number of search results on a page, excluding related
      ///   resources included by _include or _revinclude or OperationOutcomes. The
      ///   server is not bound to return the number requested, but cannot return more

      int? count,

      /// [since] - Only include resource versions that were created at or after the
      ///   given instant in time
      FhirInstant? since,

      /// [at] - Only include resource versions that were current at some point
      ///   during the time period specified in the date time value
      FhirDateTime? at,

      /// [reference] - Only include resource versions that are referenced in
      ///   the specified list
      String? reference,
    ) {
      final List<String> parameters = <String>[];
      if (count != null) {
        parameters.add('_count=$count');
      }
      if (since != null) {
        parameters.add('_since=$since');
      }
      if (at != null) {
        parameters.add('_at=$at');
      }
      if (reference != null) {
        parameters.add('_list=$reference');
      }
      return parameters;
    }

    /// MAKE REQUEST
    /// where we finally and actually make the request to the outside server
    AtDstu2FhirRequest _makeRequest({
      required RestfulRequest type,
      required String thisRequest,
      Map<String, String>? headers,
      Resource? resource,
      String? formData,
      required String accept,

      /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
      ///   but there are some older systems that won't accept that
      MimeType? mimeType,
    }) {
      headers ??= <String, String>{};
      headers['Accept'] = accept;

      switch (type) {
        case RestfulRequest.get_:
          {
            return AtDstu2FhirRequest(
              method: AtFhirRequestMethod.get_,
              url: Uri.parse(thisRequest),
              headers: headers,
            );
          }
        case RestfulRequest.put_:
          {
            headers['Content-Type'] =
                mimeType == null || MimeTypeEnumMap[mimeType] == null
                    ? 'application/fhir+json'
                    : MimeTypeEnumMap[mimeType]!;
            return AtDstu2FhirRequest(
              method: AtFhirRequestMethod.put,
              url: Uri.parse(thisRequest),
              headers: headers,
              resource: resource,
            );
          }
        case RestfulRequest.delete_:
          {
            return AtDstu2FhirRequest(
              method: AtFhirRequestMethod.delete,
              url: Uri.parse(thisRequest),
              headers: headers,
            );
          }
        case RestfulRequest.patch_:
          {
            headers['Content-Type'] =
                mimeType == null || MimeTypeEnumMap[mimeType] == null
                    ? 'application/json-patch+json'
                    : MimeTypeEnumMap[mimeType]!;

            return AtDstu2FhirRequest(
              method: AtFhirRequestMethod.patch,
              url: Uri.parse(thisRequest),
              headers: headers,
              resource: resource,
            );
          }
        case RestfulRequest.post_:
          {
            headers['Content-Type'] = formData != null
                ? 'application/x-www-form-urlencoded'
                : mimeType == null || MimeTypeEnumMap[mimeType] == null
                    ? 'application/fhir+json'
                    : MimeTypeEnumMap[mimeType]!;
            return AtDstu2FhirRequest(
              method: AtFhirRequestMethod.post,
              url: Uri.parse(thisRequest),
              headers: headers,
              resource: resource,
            );
          }
      }
    }

    AtDstu2FhirRequest _request(
      RestfulRequest type,
      String uri,
      Map<String, String>? headers,
      String requestType,
      String accept, {
      Resource? resource,
      String? formData,

      /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
      ///   but there are some older systems that won't accept that
      MimeType? mimeType,
    }) =>
        _makeRequest(
          type: type,
          thisRequest: uri,
          headers: headers,
          accept: accept,
          resource: resource,
          mimeType: mimeType,
        );

    /// Constructs the uri
    String uri(
        {required FhirRequest request,
        List<String> parameters = const <String>[]}) {
      String uri = _url(request);
      uri += '?';
      uri += _mode(request);
      uri += _format(request);
      uri += _pretty(request);
      uri += _summary(request);
      uri += _urlElements(request);
      uri += _urlParameters(parameters);
      return uri;
    }

    /// Getter for the uri
    String url(FhirRequest request) {
      String uri = _url(request);
      uri += '?';
      uri += _mode(request);
      uri += _format(request);
      uri += _pretty(request);
      uri += _summary(request);
      uri += _urlElements(request);
      return uri;
    }

    /// Allows us to return an error as a FHIR resource, whether the problem
    /// is locally or on the server side
    OperationOutcome _operationOutcome(String issue, {String? diagnostics}) =>
        OperationOutcome(issue: <OperationOutcomeIssue>[
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: FhirCode('value'),
            details: CodeableConcept(text: issue),
            diagnostics: diagnostics,
          )
        ]);
    return request.map(
      /// READ
      read: (FhirReadRequest request) => _request(
        RestfulRequest.get_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Read',
        accept,
        mimeType: request.mimeType,
      ),

      /// VREAD
      vRead: (FhirVReadRequest request) => _request(
        RestfulRequest.get_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Vread',
        accept,
        mimeType: request.mimeType,
      ),

      /// UPDATE
      update: (FhirUpdateRequest request) => _request(
        RestfulRequest.put_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Update',
        accept,
        resource: request.resource,
        mimeType: request.mimeType,
      ),

      /// PATCH
      patch: (FhirPatchRequest request) => _request(
        RestfulRequest.patch_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Patch',
        accept,
        resource: request.resource,
        mimeType: request.mimeType,
      ),

      /// DELETE
      delete: (FhirDeleteRequest request) => _request(
        RestfulRequest.delete_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Delete',
        accept,
        mimeType: request.mimeType,
      ),

      /// CREATE
      create: (FhirCreateRequest request) => _request(
        RestfulRequest.post_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Create',
        accept,
        resource: request.resource,
        mimeType: request.mimeType,
      ),

      /// SEARCH
      search: (FhirSearchRequest request) => _request(
        request.usePost ? RestfulRequest.post_ : RestfulRequest.get_,
        request.usePost
            ? url(request)
            : uri(request: request, parameters: request.parameters),
        headers,
        'Search',
        accept,
        formData: request.usePost
            ? request.formData(parameters: request.parameters)
            : null,
        mimeType: request.mimeType,
      ),

      /// SEARCHALL
      searchAll: (FhirSearchAllRequest request) => _request(
        RestfulRequest.get_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Search All',
        accept,
        mimeType: request.mimeType,
      ),

      /// CAPABILITIES
      capabilities: (FhirCapabilitiesRequest request) => _request(
        RestfulRequest.get_,
        uri(request: request, parameters: request.parameters),
        headers,
        'Capabilities',
        accept,
        mimeType: request.mimeType,
      ),

      /// TRANSACTION
      transaction: (FhirTransactionRequest request) {
        if (request.bundle.type.toString() != 'transaction') {
          return AtDstu2FhirRequest.error(
            method: AtFhirRequestMethod.post,
            url: Uri.parse(uri(request: request)),
            headers: headers,
            resource: request.bundle,
            operationOutcome: _operationOutcome(
                'A Transaction request was made, but no Bundle was included.'),
          );
        }
        if (request.bundle.entry != null) {
          for (final BundleEntry entry in request.bundle.entry!) {
            if (entry.request == null) {
              return AtDstu2FhirRequest.error(
                method: AtFhirRequestMethod.post,
                url: Uri.parse(uri(request: request)),
                headers: headers,
                resource: request.bundle,
                operationOutcome: _operationOutcome(
                    'Each bundle entry requires a request, but at least one of '
                    'the entries in this bundle is missing a request.'),
              );
            } else if (entry.request?.method == null) {
              return AtDstu2FhirRequest.error(
                method: AtFhirRequestMethod.post,
                url: Uri.parse(uri(request: request)),
                headers: headers,
                resource: request.bundle,
                operationOutcome: _operationOutcome(
                    'Each bundle entry request needs a method type specified, but'
                    ' at least one entry in this bundle is missing a method'),
              );
            }
          }
        }
        return _request(
          RestfulRequest.post_,
          uri(
            request: request,
          ),
          headers,
          'Transaction',
          accept,
          resource: request.bundle,
          mimeType: request.mimeType,
        );
      },

      /// BATCH
      batch: (FhirBatchRequest request) {
        if (request.bundle.type.toString() != 'batch') {
          return AtDstu2FhirRequest.error(
            method: AtFhirRequestMethod.post,
            url: Uri.parse(uri(request: request)),
            headers: headers,
            resource: request.bundle,
            operationOutcome: _operationOutcome(
                'A Batch request was made, but the included Bundle is not a'
                ' batch type.'),
          );
        }
        if (request.bundle.entry != null) {
          for (final BundleEntry entry in request.bundle.entry!) {
            if (entry.request == null) {
              return AtDstu2FhirRequest.error(
                method: AtFhirRequestMethod.post,
                url: Uri.parse(uri(request: request)),
                headers: headers,
                resource: request.bundle,
                operationOutcome: _operationOutcome(
                    'Each bundle entry requires a request, but at least one of '
                    'the entries in this bundle is missing a request.'),
              );
            } else if (entry.request?.method == null) {
              return AtDstu2FhirRequest.error(
                method: AtFhirRequestMethod.post,
                url: Uri.parse(uri(request: request)),
                headers: headers,
                resource: request.bundle,
                operationOutcome: _operationOutcome(
                    'Each bundle entry request needs a method type specified, but'
                    ' at least one entry in this bundle is missing a method'),
              );
            }
          }
        }
        return _request(
          RestfulRequest.post_,
          uri(
            request: request,
          ),
          headers,
          'Batch',
          accept,
          resource: request.bundle,
          mimeType: request.mimeType,
        );
      },

      /// HISTORY
      history: (FhirHistoryRequest request) {
        final List<String> parameterList = <String>[];
        final List<String> hxList = _hxParameters(
            request.count, request.since, request.at, request.reference);

        if (hxList.isNotEmpty) {
          parameterList.addAll(hxList);
        }
        if (request.parameters.isNotEmpty) {
          parameterList.addAll(request.parameters);
        }

        return _request(
          RestfulRequest.get_,
          uri(request: request, parameters: parameterList),
          headers,
          'History',
          accept,
          mimeType: request.mimeType,
        );
      },

      /// HISTORYTYPE
      historyType: (FhirHistoryTypeRequest request) {
        final List<String> parameterList = <String>[];
        final List<String> hxList = _hxParameters(
            request.count, request.since, request.at, request.reference);

        if (hxList.isNotEmpty) {
          parameterList.addAll(hxList);
        }
        if (request.parameters.isNotEmpty) {
          parameterList.addAll(request.parameters);
        }

        return _request(
          RestfulRequest.get_,
          uri(request: request, parameters: parameterList),
          headers,
          'History Type',
          accept,
          mimeType: request.mimeType,
        );
      },

      /// HISTORYALL
      historyAll: (FhirHistoryAllRequest request) {
        final List<String> parameterList = <String>[];
        final List<String> hxList = _hxParameters(
            request.count, request.since, request.at, request.reference);

        if (hxList.isNotEmpty) {
          parameterList.addAll(hxList);
        }
        if (request.parameters.isNotEmpty) {
          parameterList.addAll(request.parameters);
        }

        return _request(
          RestfulRequest.get_,
          uri(request: request, parameters: parameterList),
          headers,
          'History all',
          accept,
          mimeType: request.mimeType,
        );
      },

      /// OPERATION
      operation: (FhirOperationRequest request) => _request(
        request.usePost || request.fhirParameter != null
            ? RestfulRequest.post_
            : RestfulRequest.get_,
        request.usePost || request.fhirParameter != null
            ? url(request)
            : uri(request: request, parameters: request.parameters),
        headers,
        'Operation',
        accept,
        resource: (request.usePost && !request.useFormData) ||
                request.fhirParameter != null
            ? request.fhirParameter
            : null,
        formData: request.usePost && request.useFormData
            ? request.formData(parameters: request.parameters)
            : null,
        mimeType: request.mimeType,
      ),
    );
  }
}
