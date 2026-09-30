import 'dart:io';

void main() {
  print('Ingrese el monto total de la compra:');
  int montoTotal = int.parse(stdin.readLineSync()!);

  print('===== ZONA DE ENTREGA =====');
  print('1. Zona urbana');
  print('2. Zona periférica');
  print('3. Zona rural');

  print('Ingrese la zona de entrega:');
  int zona = int.parse(stdin.readLineSync()!);

  int costoEnvio = 0;

  if (montoTotal >= 200) {
    costoEnvio = 0;
  } else if (zona == 1) {
    costoEnvio = 8;
  } else if (zona == 2) {
    costoEnvio = 15;
  } else if (zona == 3) {
    costoEnvio = 25;
  } else {
    print('Zona de entrega no válida');
    return;
  }

  int totalPagar = montoTotal + costoEnvio;

  print('===== RESUMEN DE COMPRA =====');
  print('Monto de compra: S/ $montoTotal');
  print('Costo de envío: S/ $costoEnvio');
  print('Total a pagar: S/ $totalPagar');
}
