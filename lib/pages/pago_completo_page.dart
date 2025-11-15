import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagoCompletoPage extends StatelessWidget {
  const PagoCompletoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pago Completo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.star, color: Colors.white54, size: 100),
            const SizedBox(height: 15),
            Text(
              'Pago realizado correctamente!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}