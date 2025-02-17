library;

abstract class Usecases<type, params> {
  Future<type> call({params? params});
}
