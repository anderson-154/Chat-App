import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widget/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/chat/shared/message_field_box.dart';

void main() => runApp(const ChatScreen());

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://ugc-idle.s3-us-west-2.amazonaws.com/97e1fefcccd6eac917c614f0d3beff35.jpg'),
          ),
        ),
        title: const Text('mi amor'),
      ),
      body: _ChatView(),
    );

  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final chatPorvider = context.watch<ChatProvider>();


    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              controller: chatPorvider.chatScrollController,
              itemCount: chatPorvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatPorvider.messageList[index];
                return (message.fromWho == FromWho.hers)
                        ? HerMessageBubble(message: message)
                        : MyMessageBubble(message: message);
              }),
            ),
            //CAJA DE TEXTO
            MessageFieldBox(
              onValue: chatPorvider.sendMessage
            ), 
          ],
        ),
      ),
    );
  }
}