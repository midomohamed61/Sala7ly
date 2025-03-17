import 'package:dio/dio.dart';
import 'package:fix_it/core/models/signin/login_request_body.dart';
import 'package:fix_it/core/models/signin/login_response.dart';
import 'package:fix_it/core/models/signup/sign_up_request_body.dart';
import 'package:fix_it/core/models/signup/sign_up_response.dart';
import 'package:fix_it/core/networking/api_constant.dart';
import 'package:retrofit/retrofit.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
 @POST(ApiConstants.signup) // تأكد عندك المسار الصح
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}