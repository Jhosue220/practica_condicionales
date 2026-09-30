import 'dart:io';

void main() {
  print('=== PROGRAMA QUE CALCULA EL NIVEL DE RENDIMIENTO DEL ESTUDIANTE ===');

  print('Ingrese su nombre:');
  String nombreEstudiante = stdin.readLineSync()!;

  print('Ingrese su nota final entre 0 y 20:');
  double notaFinal = double.parse(stdin.readLineSync()!);

  print('Ingrese el porcentaje de asistencia entre 0 y 100:');
  double porcentaje = double.parse(stdin.readLineSync()!);

  if (notaFinal >= 18 && porcentaje >= 90) {
    print('Rendimiento excelente.');
  } else if (notaFinal >= 14 && porcentaje >= 80) {
    print('Rendimiento satisfactorio.');
  } else if (notaFinal >= 11 && porcentaje >= 70) {
    print('Rendimiento básico.');
  } else {
    print('Debe mejorar su rendimiento académico.');
  }
}
