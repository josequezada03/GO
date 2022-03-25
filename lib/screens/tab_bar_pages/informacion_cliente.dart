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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.cyan.shade700),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Status',
                          style: TextStyle(fontSize: 13, color: Colors.black),
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
          Divider(
            thickness: 2,
            height: 20,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                'Ubicación',
                style: TextStyle(fontSize: 16, color: Colors.cyan.shade700),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Icon(
                Icons.house,
                color: Colors.cyan.shade700,
              ),
              SizedBox(width: 5),
              Column(
                children: [
                  Text(
                    'Dirección',
                    style: TextStyle(fontSize: 8),
                  ),
                  Text(
                    'Dirección',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 100, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.cyan.shade700,
                    ),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ciudad',
                          style: TextStyle(fontSize: 8),
                        ),
                        Text(
                          'Ciudad',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Estado',
                      style: TextStyle(fontSize: 8),
                    ),
                    Text(
                      'Estado',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'País',
                      style: TextStyle(fontSize: 8),
                    ),
                    Text(
                      'País',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                'Contacto',
                style: TextStyle(fontSize: 16, color: Colors.cyan.shade700),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 160, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.cyan.shade700,
                      ),
                      Column(
                        children: [
                          Text(
                            'Teléfono',
                            style: TextStyle(fontSize: 8),
                          ),
                          Text('Teléfono', style: TextStyle(fontSize: 13))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.phone_android_sharp,
                        color: Colors.cyan.shade700,
                      ),
                      Column(
                        children: [
                          Text(
                            'Celular',
                            style: TextStyle(fontSize: 8),
                          ),
                          Text('Celular', style: TextStyle(fontSize: 13))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              RotatedBox(
                  quarterTurns: 0,
                  child: Icon(
                    Icons.link,
                    color: Colors.cyan.shade700,
                  )),
              Column(
                children: [
                  Text(
                    'URL',
                    style: TextStyle(fontSize: 8),
                  ),
                  Text('URL', style: TextStyle(fontSize: 13))
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              RotatedBox(
                  quarterTurns: 0,
                  child: Icon(
                    Icons.email_sharp,
                    color: Colors.cyan.shade700,
                  )),
              Column(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 8),
                  ),
                  Text('Email', style: TextStyle(fontSize: 13))
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              RotatedBox(
                  quarterTurns: 0,
                  child: Icon(
                    Icons.facebook,
                    color: Colors.cyan.shade700,
                  )),
              Column(
                children: [
                  Text(
                    'Facebook',
                    style: TextStyle(fontSize: 8),
                  ),
                  Text('Facebook', style: TextStyle(fontSize: 13))
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              RotatedBox(
                  quarterTurns: 0,
                  child: Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.cyan.shade700,
                  )),
              Column(
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(fontSize: 8),
                  ),
                  Text('Instagram', style: TextStyle(fontSize: 13))
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 160, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.cyan.shade700,
                      ),
                      Column(
                        children: [
                          Text(
                            'Zip Code',
                            style: TextStyle(fontSize: 8),
                          ),
                          Text('Zip Code', style: TextStyle(fontSize: 13))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.cyan.shade700,
                      ),
                      Column(
                        children: [
                          Text(
                            'Zip extensión',
                            style: TextStyle(fontSize: 8),
                          ),
                          Text('Zip extensión', style: TextStyle(fontSize: 13))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Divider(
            indent: 25,
            endIndent: 25,
            height: 1,
            thickness: 1,
            color: Colors.cyan.shade700,
          ),
        ],
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
