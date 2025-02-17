class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);
}

class UnknownFailure extends Failure {
  UnknownFailure(super.message);
}

class noInternetFailure extends Failure {
  noInternetFailure(super.message);
}

class badRequestFailure extends Failure {
  badRequestFailure(super.message);
}

class badResponse extends Failure {
  badResponse(super.message);
}

class notFoundFailure extends Failure {
  notFoundFailure(super.message);
}

class unauthorizedFailure extends Failure {
  unauthorizedFailure(super.message);
}

class forbiddenFailure extends Failure {
  forbiddenFailure(super.message);
}

class internalServerErrorFailure extends Failure {
  internalServerErrorFailure(super.message);
}

class sendTimeoutFailure extends Failure {
  sendTimeoutFailure(super.message);
}

class receiveTimeoutFailure extends Failure {
  receiveTimeoutFailure(super.message);
}

class noConnectionFailure extends Failure {
  noConnectionFailure(super.message);
}

class noContentFailure extends Failure {
  noContentFailure(super.message);
}

class notFound404Failure extends Failure {
  notFound404Failure(super.message);
}

class cancelFailure extends Failure {
  cancelFailure(super.message);
}

class cacheErrorFailure extends Failure {
  cacheErrorFailure(super.message);
}

class badGatewayFailure extends Failure {
  badGatewayFailure(super.message);
}

class noResponseFailure extends Failure {
  noResponseFailure(super.message);
}
