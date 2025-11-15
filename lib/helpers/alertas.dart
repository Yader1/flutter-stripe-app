part of 'helpers.dart';

mostrarLoading( BuildContext context ) {
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: ( _ ) => const AlertDialog(
      title: Text('Espere por favor...'),
      content: LinearProgressIndicator()
    )
  );
}

mostrarAlerta( BuildContext context, String titulo, String mensaje ) {
  showDialog(
    context: context, 
    builder: ( _ ) => AlertDialog(
      title: Text(titulo),
      content: Text(mensaje),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context), 
          child: const Text('Ok')
        )
      ],
    )
  );
}