import 'package:flutter/material.dart';
import 'package:gp_app/widget/textfield_widget.dart';

import '../../widget/perfil_cliente.dart';

class ClienteNuevo extends StatefulWidget {
  const ClienteNuevo({Key? key}) : super(key: key);

  @override
  State<ClienteNuevo> createState() => _ClienteNuevoState();
}

class _ClienteNuevoState extends State<ClienteNuevo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade700,
        title: Text('Cliente nuevo'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 25,
          ),
          PerfilCliente(),
          const SizedBox(height: 12),
          Text('Nombre Completo',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.cyan.shade700)),
          const SizedBox(height: 12),
          TextFieldWidget(
            label: 'Status',
            text: '',
            onChanged: (name) {},
          ),
          const SizedBox(height: 12),
          TextFieldWidget(
            label: 'Direccion',
            text: '',
            onChanged: (email) {},
          ),
          const SizedBox(height: 12),
          TextFieldWidget(
            label: 'Email',
            text: '',
            //maxLines: 5,
            onChanged: (about) {},
          ),
          const SizedBox(height: 12),
          TextFieldWidget(
            label: 'Celular',
            text: '',
            //maxLines: 5,
            onChanged: (about) {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.check),
        backgroundColor: Colors.cyan.shade700,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
