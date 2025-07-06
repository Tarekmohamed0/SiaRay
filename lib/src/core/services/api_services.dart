// import retrofit package

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:final_project/src/core/constants/constants.dart';
import 'package:final_project/src/features/devices/data/models/sub_device_model.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:final_project/src/features/notificatoin/data/models/notification_respone.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_request.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_response.dart';
import 'package:final_project/src/features/personalinfo/data/models/profile_response.dart';
import 'package:final_project/src/features/signin/data/models/logout_response.dart';

import 'package:retrofit/retrofit.dart';

import '../../features/devices/data/models/add_device_request.dart';
import '../../features/devices/data/models/add_sub_device_home_request.dart';
import '../../features/devices/data/models/device_response.dart';
import '../../features/devices/data/models/sub_device_home_response.dart';
import '../../features/devices/data/models/sub_devices/subdevice.dart';
import '../../features/devices/data/models/sub_devices_response.dart';
import '../../features/devices/domain/entities/add_sub_devices_home_response.dart';
import '../../features/forgot_password/data/models/forgot_password_response.dart';
import '../../features/home/data/models/batteries/energy_reading_response.dart';
import '../../features/panels/data/models/get_device_response.dart';
import '../../features/personalinfo/data/models/profile_request.dart';
import '../../features/resetpassword/data/models/reset_password_response.dart';
import '../../features/signup/data/models/user_model.dart';
import '../../features/verification/data/models/otp_verification_response.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
  @POST(Constant.loginEndpoint)
  Future<UserModel> signIn(
    @Field() String email,
    @Field() String password,
  );
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

  @GET(Constant.getEnergyReadings)
  Future<EnergyReadingResponse> getEnergyReadings();

  @GET(Constant.getDevice)
  Future<GetDeviceResponse> getDevice();

  @POST(Constant.toggleDevice)
  Future<String> toggleDevice(
      @Field() String status,
      // ignore: non_constant_identifier_names
      @Field() String serial_number);

  @GET(Constant.getSubDevice)
  Future<SubDevicesResponse> getSubDevice();

  @POST(Constant.addSubDevice)
  Future<DeviceResponse> addSubDevice(
    @Body() AddDeviceRequest request,
  );

  @POST(Constant.toggelMode)
  Future<Map<String, dynamic>> toggelMode(
    // ignore: non_constant_identifier_names
    @Field() String serial_number,
    @Field() String mode,
  );
  @GET(Constant.notification)
  Future<NotificationRespone> getNotification();

  @POST(Constant.updatePassword)
  Future<PasswordResponse> changePassword(
    @Body() PasswordRequest passwordRequest,
  );
  @POST(Constant.logout)
  Future<LogoutResponse> logOut();

  @MultiPart()
  @POST(Constant.updateProfile)
  Future<ProfileResponse> updateProfile(
    @Part(name: "name") String? name,
    @Part(name: "phone") String? phone,
    @Part(name: "city") String? city,
    @Part(name: "image") File? image,
  );

  @POST(Constant.addSubDeviceToDevicesHome)
  Future<AddSubDevicesHomeResponse> addSubDeviceToDevicesHome(
    @Body() AddSubDeviceHomeRequest request,
  );

  @GET(Constant.getSubDeviceHome)
  Future<SubDeviceHomeResponse> getSubDeviceHome();
}
