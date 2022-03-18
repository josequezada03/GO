import 'package:flutter/material.dart';
import 'package:gp_app/model/message_model.dart';
import 'package:gp_app/screens/bottom_navigation_bar_screens/pantalla_chat.dart';

class Mensajeria extends StatefulWidget {
  const Mensajeria({Key? key}) : super(key: key);

  @override
  _MensajeriaState createState() => _MensajeriaState();
}

class _MensajeriaState extends State<Mensajeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensajeria'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final Message chat = chats[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PantallaChat(
                    user: chat.sender,
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: chat.unread
                          ? BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.all(
                                  width: 2, color: Colors.cyan.shade700),
                              // shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                )
                              ],
                            )
                          : BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                )
                              ],
                            ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                        radius: 35,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    chat.sender.name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  chat.sender.isOnline
                                      ? Container(
                                          margin:
                                              const EdgeInsets.only(left: 5),
                                          width: 7,
                                          height: 7,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.cyan.shade700),
                                        )
                                      : Container(
                                          child: null,
                                        ),
                                ],
                              ),
                              Text(
                                chat.time,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              chat.text,
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black54),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              title: Text('Nuevo mensaje'),
              actions: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    )),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: Text('Aceptar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(95, 40), primary: Colors.cyan.shade700),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: Text('Cancelar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 40), primary: Colors.cyan.shade700),
                ),
              ],
            ),
          );
        },
        backgroundColor: Colors.cyan.shade700,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
