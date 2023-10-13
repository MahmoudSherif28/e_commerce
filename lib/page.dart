import 'dart:io';
import 'client.dart';
import 'system.dart';
class page{

}
void carpage(){
  print("welcome to our company");
  print('1- Register as Client \n2- Login as Employee \n3-Back');
  int? registerType = int.parse(stdin.readLineSync()!);
  switch (registerType) {
    case 1:
      clientRegister();
      return carpage();
    case 2:
      try {
        print('Enter Your Name:');
        String employeeName = stdin.readLineSync()!;
        print('Enter Your Id:');
        String employeeId = stdin.readLineSync()!;
        employeeValidation(employeeName, employeeId);
      } catch (e) {
        print('wrong information,please check again');
      }
      return carpage();
    case 3:
      break;
    default:
      {
        print('please select correct number');
        carpage();
      };
  }
}