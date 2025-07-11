// Mocks generated by Mockito 5.4.5 from annotations
// in final_project/test/features/signin/presentation/cubit/signin_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:dartz/dartz.dart' as _i3;
import 'package:final_project/src/core/error/error.dart' as _i8;
import 'package:final_project/src/core/utils/shared/hive_helper.dart' as _i12;
import 'package:final_project/src/features/signin/data/models/logout_response.dart'
    as _i11;
import 'package:final_project/src/features/signin/domain/repositories/signin_repo.dart'
    as _i2;
import 'package:final_project/src/features/signin/domain/usecases/logout_uscase.dart'
    as _i10;
import 'package:final_project/src/features/signin/domain/usecases/signin_usecase.dart'
    as _i6;
import 'package:final_project/src/features/signup/data/models/user_model.dart'
    as _i9;
import 'package:flutter/foundation.dart' as _i5;
import 'package:hive/hive.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i13;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSigninRepo_0 extends _i1.SmartFake implements _i2.SigninRepo {
  _FakeSigninRepo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBox_2<E> extends _i1.SmartFake implements _i4.Box<E> {
  _FakeBox_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeValueListenable_3<T1> extends _i1.SmartFake
    implements _i5.ValueListenable<T1> {
  _FakeValueListenable_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SigninUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSigninUsecase extends _i1.Mock implements _i6.SigninUsecase {
  MockSigninUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SigninRepo get signInrepository => (super.noSuchMethod(
        Invocation.getter(#signInrepository),
        returnValue: _FakeSigninRepo_0(
          this,
          Invocation.getter(#signInrepository),
        ),
      ) as _i2.SigninRepo);

  @override
  _i7.Future<_i3.Either<_i8.Failure, _i9.UserModel>> execute(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [
            email,
            password,
          ],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.Failure, _i9.UserModel>>.value(
            _FakeEither_1<_i8.Failure, _i9.UserModel>(
          this,
          Invocation.method(
            #execute,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, _i9.UserModel>>);
}

/// A class which mocks [LogoutUscase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogoutUscase extends _i1.Mock implements _i10.LogoutUscase {
  MockLogoutUscase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.SigninRepo get signInrepository => (super.noSuchMethod(
        Invocation.getter(#signInrepository),
        returnValue: _FakeSigninRepo_0(
          this,
          Invocation.getter(#signInrepository),
        ),
      ) as _i2.SigninRepo);

  @override
  _i7.Future<_i3.Either<_i8.Failure, _i11.LogoutResponse>> execute() =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
        ),
        returnValue:
            _i7.Future<_i3.Either<_i8.Failure, _i11.LogoutResponse>>.value(
                _FakeEither_1<_i8.Failure, _i11.LogoutResponse>(
          this,
          Invocation.method(
            #execute,
            [],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.Failure, _i11.LogoutResponse>>);
}

/// A class which mocks [HiveHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockHiveHelper<T> extends _i1.Mock implements _i12.HiveHelper<T> {
  MockHiveHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get boxName => (super.noSuchMethod(
        Invocation.getter(#boxName),
        returnValue: _i13.dummyValue<String>(
          this,
          Invocation.getter(#boxName),
        ),
      ) as String);

  @override
  _i7.Future<_i4.Box<T>> openBox() => (super.noSuchMethod(
        Invocation.method(
          #openBox,
          [],
        ),
        returnValue: _i7.Future<_i4.Box<T>>.value(_FakeBox_2<T>(
          this,
          Invocation.method(
            #openBox,
            [],
          ),
        )),
      ) as _i7.Future<_i4.Box<T>>);

  @override
  _i5.ValueListenable<_i4.Box<T>> listenable() => (super.noSuchMethod(
        Invocation.method(
          #listenable,
          [],
        ),
        returnValue: _FakeValueListenable_3<_i4.Box<T>>(
          this,
          Invocation.method(
            #listenable,
            [],
          ),
        ),
      ) as _i5.ValueListenable<_i4.Box<T>>);

  @override
  _i7.Future<void> addOrUpdate(
    dynamic key,
    T? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addOrUpdate,
          [
            key,
            value,
          ],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  List<T> getall() => (super.noSuchMethod(
        Invocation.method(
          #getall,
          [],
        ),
        returnValue: <T>[],
      ) as List<T>);

  @override
  _i7.Future<void> delete(dynamic key) => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [key],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> clearAll() => (super.noSuchMethod(
        Invocation.method(
          #clearAll,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<bool> containsKey(dynamic key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);

  @override
  _i7.Future<int> count() => (super.noSuchMethod(
        Invocation.method(
          #count,
          [],
        ),
        returnValue: _i7.Future<int>.value(0),
      ) as _i7.Future<int>);

  @override
  _i7.Future<void> closeBox() => (super.noSuchMethod(
        Invocation.method(
          #closeBox,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}
