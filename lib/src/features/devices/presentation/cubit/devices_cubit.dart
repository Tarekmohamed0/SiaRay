
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:equatable/equatable.dart';
  
  part 'devices_state.dart';
  
  class DevicesCubit extends Cubit<DevicesState> {
    DevicesCubit() : super(DevicesInitial());
  }
  