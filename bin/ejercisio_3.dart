import 'dart:io';

void main() {
  print('===== PROGRAMAS DE ESTUDIO =====');

  print('1. Desarrollo de Sistemas de Información');
  print('2. Enfermería Técnica');
  print('3. Contabilidad');
  print('4. Administración de Empresas');

  int desarrolloSistemas = 180;
  int enfermeriaTecnica = 150;
  int contabilidad = 160;
  int administracionEmpresas = 140;

  print('Ingrese el número del programa que desea estudiar:');
  int programa = int.parse(stdin.readLineSync()!);

  String programaSeleccionado = '';
  int precioOriginal = 0;

  switch (programa) {
    case 1:
      programaSeleccionado = 'Desarrollo de Sistemas de Información';
      precioOriginal = desarrolloSistemas;
      break;

    case 2:
      programaSeleccionado = 'Enfermería Técnica';
      precioOriginal = enfermeriaTecnica;
      break;

    case 3:
      programaSeleccionado = 'Contabilidad';
      precioOriginal = contabilidad;
      break;

    case 4:
      programaSeleccionado = 'Administración de Empresas';
      precioOriginal = administracionEmpresas;
      break;

    default:
      print('Opción no válida');
      return;
  }

  print('¿Tiene descuento? (si/no):');
  String respuesta = stdin.readLineSync()!.toLowerCase();

  double descuento = 0;

  if (respuesta == 'si') {
    descuento = precioOriginal * 0.10;
  }

  double totalPagar = precioOriginal - descuento;

  print('');
  print('===== RESUMEN DE MATRÍCULA =====');
  print('Programa seleccionado: $programaSeleccionado');
  print('Precio original: S/ $precioOriginal');
  print('Descuento aplicado: S/ ${descuento.toStringAsFixed(2)}');
  print('Total a pagar: S/ ${totalPagar.toStringAsFixed(2)}');
}
