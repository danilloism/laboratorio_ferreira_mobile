import 'dart:async';

import 'package:dio/dio.dart';
import 'package:laboratorio_ferreira_mobile/src/configs/config.dart';
import 'package:laboratorio_ferreira_mobile/src/core/core.dart';
import 'package:laboratorio_ferreira_mobile/src/features/auth/data/models/models.dart';
import 'package:path/path.dart';

class AuthRepository {
  final IHttpService _httpService;
  final _path = join(Config.apiUrl, 'user');
  String? _token;
  String? get authToken => _token;
  set authToken(String? value) {
    _httpService.resetAuthTokenWithValueOrNull(value);
    _token = value;
  }

  AuthRepository({required IHttpService httpService})
      : _httpService = httpService;

  Future<Session> login(Account account) async {
    try {
      final Response resposta = await _httpService.post(
        join(_path, 'login'),
        data: account.toJson(),
      );

      final dto =
          ApiResponse<Session>.fromJson(resposta.data, Session.fromJson);
      if (dto.sucesso) {
        final session = dto.dados!;
        authToken = session.accessToken;
        return session;
      }

      throw RepositoryException(
        error: resposta.data,
        whichRepository: AuthRepository,
      );
    } on DioError catch (e) {
      throw RepositoryException(
        error: {
          'data': e.response?.data,
          'statusCode': e.response?.statusCode,
        },
        whichRepository: AuthRepository,
      );
    } catch (e) {
      rethrow;
    }
  }
}
