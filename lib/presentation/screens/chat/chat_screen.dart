import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widget/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/chat/my_message_bubble.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index%2==0)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();

              }),
            ),
        
            Text('hello world')
          ],
        ),
      ),
    );
  }
}