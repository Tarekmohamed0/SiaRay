import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/constants/constant.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/core/utils/shared/shared_prefs.dart';
import 'package:final_project/src/features/signin/data/models/logout_response.dart';
import 'package:final_project/src/features/signin/domain/usecases/logout_uscase.dart';
import 'package:final_project/src/features/signin/domain/usecases/signin_usecase.dart';
import 'package:final_project/src/features/signin/presentation/cubit/signin_cubit.dart';
import 'package:final_project/src/features/signup/data/models/auth.dart';
import 'package:final_project/src/features/signup/data/models/user.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'signin_cubit_test.mocks.dart';

@GenerateMocks([SigninUsecase, LogoutUscase, HiveHelper])
void main() {
  late MockSigninUsecase mockSigninUsecase;
  late MockLogoutUscase mockLogoutUscase;
  late MockHiveHelper<UserModel> mockHiveHelper;
  late SigninCubit signinCubit;

  setUp(() {
    mockSigninUsecase = MockSigninUsecase();
    mockLogoutUscase = MockLogoutUscase();
    mockHiveHelper = MockHiveHelper<UserModel>();

    // Set up the service locator to return our mocks
    sl.registerLazySingleton<SigninUsecase>(() => mockSigninUsecase);
    sl.registerLazySingleton<LogoutUscase>(() => mockLogoutUscase);
    sl.registerLazySingleton<HiveHelper<UserModel>>(() => mockHiveHelper);

    // Initialize the cubit
    signinCubit = SigninCubit();
  });

  tearDown(() {
    // Clean up after each test
    signinCubit.close();
  });

  group('SigninCubit Tests', () {
    final tEmail = 'test@example.com';
    final tPassword = 'password123';

    final tUser = User(
      id: 1,
      name: 'Test User',
      email: tEmail,
      phone: '1234567890',
      city: 'Test City',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    final tAuthorisation = Authorisation(
      token: 'test_token_123',
      type: 'Bearer',
    );

    final tUserModel = UserModel(
      status: 'success',
      message: 'Signin Success',
      user: tUser,
      authorisation: tAuthorisation,
    );

    test('initial state should be SigninInitial', () {
      // Assert
      expect(signinCubit.state, isA<SigninInitial>());
    });

    test('should emit [SigninLoading, SigninSuccess] when signin is successful',
        () async {
      // Arrange

      when(mockSigninUsecase.execute(tEmail, tPassword))
          .thenAnswer((_) async => Right(tUserModel));
      when(mockHiveHelper.addOrUpdate(Constant.userCacheKey, tUserModel))
          .thenAnswer((_) async => {});
      when(mockHiveHelper.get(Constant.userCacheKey)).thenReturn(tUserModel);

      // Act
      signinCubit.signin(email: tEmail, password: tPassword);

      // Assert
      await expectLater(
        signinCubit.stream,
        emitsInOrder([
          SigninLoading(),
          SigninSuccess(tUserModel),
        ]),
      );

      verify(mockSigninUsecase.execute(tEmail, tPassword)).called(1);
      verify(mockHiveHelper.addOrUpdate(Constant.userCacheKey, tUserModel))
          .called(1);
      verify(mockHiveHelper.get(Constant.userCacheKey)).called(1);
    });

    test(
        'should emit [SigninLoading, SigninFailed] when signin fails with ServerFailure',
        () async {
      // Arrange
      final failure = ServerFailure('Invalid credentials');
      when(mockSigninUsecase.execute(tEmail, tPassword))
          .thenAnswer((_) async => Left(failure));

      // Act
      signinCubit.signin(email: tEmail, password: tPassword);

      // Assert
      await expectLater(
        signinCubit.stream,
        emitsInOrder([
          SigninLoading(),
          SigninFailed('Invalid credentials'),
        ]),
      );

      verify(mockSigninUsecase.execute(tEmail, tPassword)).called(1);
    });

    test(
        'should emit [SigninLoading, SigninFailed] when signin fails with DioException',
        () async {
      // Arrange
      when(mockSigninUsecase.execute(tEmail, tPassword)).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/login'),
        error: 'Network Error',
      ));

      // Act
      signinCubit.signin(email: tEmail, password: tPassword);

      // Assert
      await expectLater(
        signinCubit.stream,
        emitsInOrder([
          SigninLoading(),
          isA<SigninFailed>(),
        ]),
      );

      verify(mockSigninUsecase.execute(tEmail, tPassword)).called(1);
    });
  });

  group('logout', () {
    final tLogoutResponse = LogoutResponse(
      status: 'success',
      message: 'Logout Success',
    );

    test('should emit [LogoutLoading, LogoutSuccess] when logout is successful',
        () async {
      // Arrange
      when(mockLogoutUscase.execute())
          .thenAnswer((_) async => Right(tLogoutResponse));

      // Act
      signinCubit.logout();

      // Assert
      await expectLater(
        signinCubit.stream,
        emitsInOrder([
          LogoutLoading(),
          LogoutSuccess('Logout Success'),
        ]),
      );

      verify(mockLogoutUscase.execute()).called(1);
    });

    test('should emit [LogoutLoading, LogoutFailed] when logout fails',
        () async {
      // Arrange
      final failure = ServerFailure('Logout failed');
      when(mockLogoutUscase.execute()).thenAnswer((_) async => Left(failure));

      // Act
      signinCubit.logout();

      // Assert
      await expectLater(
        signinCubit.stream,
        emitsInOrder([
          LogoutLoading(),
          LogoutFailed('Logout failed'),
        ]),
      );

      verify(mockLogoutUscase.execute()).called(1);
    });
  });
}
