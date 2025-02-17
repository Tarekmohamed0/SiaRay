// import retrofit package

import 'package:dio/dio.dart';
import 'package:final_project/src/core/constants/constants.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/forgot_password/data/models/forgot_password_response.dart';
import '../../features/resetpassword/data/models/reset_password_response.dart';
import '../../features/signup/data/models/user_model.dart';
import '../../features/verification/data/models/otp_verification_response.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
  @POST("user/auth/register")
  Future<UserModel> register(
    @Field() String name,
    @Field() String email,
    @Field() String password,
    @Field() String passwordConfirmation,
    @Field() String phone,
    @Field() String city,
  );
  @POST(Constant.forgotPasswordEndpoint)
  Future<ForgotPasswordResponse> ForgotPassword(
    @Field() String email,
  );
  @POST(Constant.otpVerificationEndpoint)
  Future<OtpVerificationResponse> OtpVerificatoin(
    @Field() String email,
    @Field() String token, //otp
  );
  @POST(Constant.resetPasswordEndpoint)
  Future<ResetPasswordResponse> ResetPassword(
    @Field() String email,
    @Field() String password,
    // ignore: non_constant_identifier_names
    @Field('password_confirmation') String password_confirmation,
    @Field() String token, //otp
  );
  @GET(Constant.getBatteries)
  Future<Batteries> getBatteries();
}
