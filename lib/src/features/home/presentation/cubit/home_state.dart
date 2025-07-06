part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeGetEnergyReadingLoading extends HomeState {}

class HomeGetEnergyReadingLoaded extends HomeState {
  final EnergyReadingResponse energyReadingResponse;

  const HomeGetEnergyReadingLoaded(this.energyReadingResponse);

  @override
  List<Object> get props => [energyReadingResponse];
}

class HomeLoaded extends HomeState {
  final Batteries batteries;

  const HomeLoaded(this.batteries);

  @override
  List<Object> get props => [batteries];
}

class HomeError extends HomeState {
  final String message;

  const HomeError(this.message);

  @override
  List<Object> get props => [message];
}
