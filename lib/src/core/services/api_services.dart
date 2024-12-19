// import retrofit package
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/signup/data/models/user_model.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: "https://siaray.holylands.net/api/")
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
  @POST("user/auth/register")
  Future<UserModel> register(
    @Field() String name,
    @Field() String email,
    @Field() String password,
    @Field() String password_confirmation,
    @Field() String phone,
    @Field() String city,
  );
}
