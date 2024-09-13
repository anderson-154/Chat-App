import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hola amor', fromWho: FromWho.me),
    Message(text: 'ya llegaste del trabajo?', fromWho: FromWho.me)
  ];

  Future<void>sendMessage(String text) async {
    if(text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    
    notifyListeners();
    moveScrollToButtom();
  }

  Future<void> moveScrollToButtom() async{

    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent , 
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut
    );
  }
}