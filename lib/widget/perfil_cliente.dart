import 'package:flutter/material.dart';

class PerfilCliente extends StatelessWidget {
  const PerfilCliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          imagenCliente(),
          Positioned(
            bottom: 0,
            right: 4,
            child: EditarIcono(),
          ),
        ],
      ),
    );
  }

  Widget imagenCliente() {
    final image = AssetImage('/blankProfile.webp');

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: () {}),
        ),
      ),
    );
  }

  Widget EditarIcono() => CrearCirculo(
        color: Colors.white,
        all: 3,
        child: CrearCirculo(
          all: 8,
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
            size: 20,
          ),
          color: Colors.cyan.shade700,
        ),
      );

  Widget CrearCirculo({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: Colors.cyan.shade700,
          child: child,
        ),
      );
}
