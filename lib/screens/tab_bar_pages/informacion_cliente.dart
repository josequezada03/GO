import 'package:flutter/material.dart';

class InformacioCliente extends StatefulWidget {
  const InformacioCliente({Key? key}) : super(key: key);

  @override
  State<InformacioCliente> createState() => _InformacioClienteState();
}

class _InformacioClienteState extends State<InformacioCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de Ruben Diaz'),
        backgroundColor: Colors.cyan.shade700,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 37,
                backgroundColor: Colors.cyan.shade700,
                child: CircleAvatar(
                  backgroundImage: AssetImage('user4.jpg'),
                  radius: 35,
                ),
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
                            ('Ruben Diaz'),
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Status',
                      style: TextStyle(fontSize: 13, color: Colors.black54),
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

      /*CircleAvatar(
        radius: 10,
        backgroundColor: Colors.cyan.shade700,
        child: CircleAvatar(
          backgroundImage: AssetImage('user4.jpg'),
          radius: 68,
        ),
      ),*/
    );
  }
}
