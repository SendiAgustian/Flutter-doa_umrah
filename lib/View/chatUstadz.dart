import 'package:flutter/material.dart';

class TanyaUstadz extends StatefulWidget {
  @override
  _TanyaUstadzState createState() => _TanyaUstadzState();
}

class _TanyaUstadzState extends State<TanyaUstadz> {

  final TextEditingController _chatController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    _chatController.clear();
      ChatMessage message = ChatMessage(
        text: text
    );
      
    setState(() {
       _messages.insert(0, message);
    });
  }

   Widget _chatEnvironment (){
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
          child:  Container(
        margin: const EdgeInsets.symmetric(horizontal:8.0),
        child:  Row(
          children: <Widget>[
            Flexible(
              child:  TextField(
                decoration: InputDecoration.collapsed(hintText: "Start typing ..."),
                controller: _chatController,
                onSubmitted: _handleSubmit,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child:  IconButton(
                icon: Icon(Icons.send),
                
                onPressed: ()=> _handleSubmit(_chatController.text),
                 
              ),
            )
          ],
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tanya Ustadz"),
        backgroundColor: const Color(0xff0ba120),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding:  EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(decoration:  BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _chatEnvironment(),)
          ],
        ),
      )
    );
  }

}

const String _name = "Nama Saya";

class ChatMessage extends StatelessWidget {
  final String text;

// constructor to get text from textfield
  ChatMessage({
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child:  CircleAvatar(
              child:  Icon(Icons.person)
              ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            width: 250,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_name, style: Theme.of(context).textTheme.subhead),
                Align(
                alignment: Alignment.topLeft,
                child: Container(
                  alignment: Alignment.topLeft,
                  width: 300,
                  color: Colors.transparent,
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        text,
                      ),
                    ),
                  ),
                ),
              ),
              ],
            ),
          )
        ],
      )
    );
  }
}