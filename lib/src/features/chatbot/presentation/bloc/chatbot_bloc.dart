import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatbot_event.dart';
part 'chatbot_state.dart';
part 'chatbot_bloc.freezed.dart';

class ChatbotBloc extends Bloc<ChatbotEvent, ChatbotState> {
  ChatbotBloc() : super(ChatbotState.initial()) {
    on<ChatbotEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
