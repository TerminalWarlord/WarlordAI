import 'package:ai_chat/models/message_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageNotifier extends StateNotifier<List<Message>> {
  MessageNotifier() : super([]);

  // List<Map<String, dynamic>> getMessages() {
  //   return state;
  // }

  List<Message> addMessage(String message, String identier) {
    state = [
      Message(
        message: message,
        isMe: identier == 'isMe',
      ),
      ...state,
    ];
    return state;
  }

  Stream<List<Message>> getMessages() async* {
    while (true) {
      yield state;
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

final messageProvider = StateNotifierProvider<MessageNotifier, List<Message>>(
  (ref) {
    return MessageNotifier();
  },
);



// const List<String> messages = ['Hello'];

// final messageProvider = Provider<List<String>>(
//   (ref) {
//     return messages;
//   },
// );
