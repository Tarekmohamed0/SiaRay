import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/devices/data/models/add_device_request.dart';
import 'package:final_project/src/features/devices/data/models/add_sub_device_home_request.dart';
import 'package:final_project/src/features/devices/data/models/device_response.dart';
import 'package:final_project/src/features/devices/data/models/sub_device_home_response.dart';
import 'package:final_project/src/features/devices/domain/entities/add_sub_devices_home_response.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_request.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_response.dart';
import 'package:final_project/src/features/personalinfo/data/models/profile_response.dart';
import 'package:final_project/src/features/signin/data/models/logout_response.dart';
import 'package:final_project/src/features/signin/presentation/cubit/signin_cubit.dart';
import 'package:final_project/src/features/signup/data/models/auth.dart';
import 'package:final_project/src/features/signup/data/models/user.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

class MockApiServices extends Mock implements ApiServices {}

// @GenerateMocks([ApiServices])
void main() {
  group('API Services Tests', () {
    late SigninCubit signinCubit;
    late MockApiServices mockApiServices;

    setUp(() {
      signinCubit = SigninCubit();
      mockApiServices = MockApiServices();
    });

    test('signIn - returns UserModel on successful login', () async {
      // Arrange
      when(mockApiServices.signIn('tarek@gmail.com', '123456'))
          .thenAnswer((_) async => UserModel(
                status: 'success',
                message: 'Signin Success',
                user: User(
                  id: 1,
                  name: 'Tarek',
                  email: 'tarek@gmail.com',
                  phone: '23423423423',
                  city: 'cairo',
                  createdAt: DateTime.now(),
                  updatedAt: DateTime.now().add(Duration(days: 1)),
                ),
                authorisation: Authorisation(
                  token: 'adfasdfsdfdf',
                  type: 'Bearer',
                ),
              ));

      // Act
      final response =
          await mockApiServices.signIn('tarek@gmail.com', '123456');

      // Assert
      expect(response.status, 'success');
      expect(response.user?.name, 'Tarek');
      expect(response.user?.email, 'tarek@gmail.com');
      expect(response.authorisation?.type, 'Bearer');
      verify(mockApiServices.signIn('tarek@gmail.com', '123456')).called(1);
    });

    test('test sign in cubit', () async {
      // Setup the mock first
      when(mockApiServices.signIn('tarek@gmail.com', '123')).thenAnswer(
        (_) async => UserModel(
          status: 'success',
          message: 'Signin Success',
          user: User(
            id: 1,
            name: 'Tarek',
            email: 'tarek@gmail.com',
            phone: '23423423423',
            city: 'cairo',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now().add(Duration(days: 1)),
          ),
          authorisation: Authorisation(
            token: 'adfasdfsdfdf',
            type: 'Bearer',
          ),
        ),
      );

      // Then run the blocTest
      blocTest<SigninCubit, SigninState>(
        'emits [MyState] when MyEvent is added.',
        build: () => signinCubit,
        act: (cubit) => cubit.signin(
          email: 'tarek@gmail.com',
          password: '123',
        ),
        expect: () => [
          SigninLoading(),
          SigninSuccess(
            UserModel(
              status: 'success',
              message: 'Signin Success',
              user: User(
                id: 1,
                name: 'Tarek',
                email: '',
                phone: '23423423423',
                city: 'cairo',
                createdAt: DateTime.now(),
                updatedAt: DateTime.now().add(Duration(days: 1)),
              ),
              authorisation: Authorisation(
                token: 'adfasdfsdfdf',
                type: 'Bearer',
              ),
            ),
          ),
        ],
      );
    });

    test('register - returns UserModel on successful registration', () async {
      // Arrange
      final expectedResponse = UserModel(
        status: 'success',
        message: 'Registration Success',
        user: User(
          id: 2,
          name: 'New User',
          email: 'new@example.com',
          phone: '9876543210',
          city: 'Alexandria',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        authorisation: Authorisation(
          token: 'new_token_123',
          type: 'Bearer',
        ),
      );

      when(mockApiServices.register(
        'New User',
        'new@example.com',
        'password123',
        'password123',
        '9876543210',
        'Alexandria',
      )).thenAnswer((_) async => expectedResponse);

      // Act
      final response = await mockApiServices.register(
        'New User',
        'new@example.com',
        'password123',
        'password123',
        '9876543210',
        'Alexandria',
      );

      // Assert
      expect(response.status, 'success');
      expect(response.message, 'Registration Success');
      expect(response.user?.name, 'New User');
      expect(response.user?.email, 'new@example.com');
    });

    test('updateProfile - returns ProfileResponse when updating profile',
        () async {
      // Arrange
      final mockProfileResponse = ProfileResponse(
        status: 'success',
        message: 'Profile updated successfully',
      );

      when(mockApiServices.updateProfile(
        'Updated Tarek',
        '9876543210',
        'Alexandria',
        null,
      )).thenAnswer((_) async => mockProfileResponse);

      // Act
      final response = await mockApiServices.updateProfile(
        'Updated Tarek',
        '9876543210',
        'Alexandria',
        null,
      );

      // Assert
      expect(response.status, 'success');
      expect(response.message, 'Profile updated successfully');
    });

    test('logOut - returns LogoutResponse when logging out', () async {
      // Arrange
      when(mockApiServices.logOut()).thenAnswer((_) async => LogoutResponse(
            status: 'success',
            message: 'Successfully logged out',
          ));

      // Act
      final response = await mockApiServices.logOut();

      // Assert
      expect(response.status, 'success');
      expect(response.message, 'Successfully logged out');
      verify(mockApiServices.logOut()).called(1);
    });
  });
}
