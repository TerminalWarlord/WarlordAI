class Message {
  const Message({
    this.isMe = true,
    required this.message,
  });
  final bool isMe;
  final String message;
}
