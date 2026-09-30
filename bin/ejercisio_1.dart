import 'dart:io';

// Acceso al sistema académico

void main() {
  print('Ingrese su nombre de usuario:');
  String usuarioNombre = stdin.readLineSync()!;

  print('Ingrese su contraseña:');
  String usuarioContrasena = stdin.readLineSync()!;

  print('Confirme si su cuenta está activa (si/no):');
  bool usuarioActivo = stdin.readLineSync()!.toLowerCase() == 'si';

  if (usuarioActivo) {
    print('Acceso permitido. Bienvenido al sistema.');
  } else {
    print('Acceso denegado. Verifique sus datos.');
  }
}
