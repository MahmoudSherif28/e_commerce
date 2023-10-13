import 'dart:io';
import 'client.dart';
import 'employee.dart';
class system {
  List<Client> client = [];
  List<Employee> employees = [];

}

void clientRegister() {
  print('Enter Name:');
  String name = stdin.readLineSync()!;
  print('Enter Id:');
  String id = stdin.readLineSync()!;
  print('Enter Nationality:');
  String nationality = stdin.readLineSync()!;
  print('Enter ContactInfo:');
  String contactInfo = stdin.readLineSync()!;
  print('Enter Gender:');
  String gender = stdin.readLineSync()!;
  print('Enter age:');
  int? age = int.parse(stdin.readLineSync()!);
  var client;
  int clientNum = client.length;
  try {
    var client;
    client.add(
      Client(
          name: name,
          id: id,
          nationality: nationality,
          contactInfo: contactInfo,
          age: age,
          gender: gender,
          adress: '',
          phone: ''),
    );
    print('Need to car ?? \nyes or no');
    String neededcar = stdin.readLineSync()!;
    if (neededcar == 'yes') {
      print('Please Enter car Type \nnew or old');
      String roomType = stdin.readLineSync()!;
      roomType == 'new'
          ? print('Availablecar: ')
          : print('Availablecar: ');
      print('Enter Your Selected Room: ');
      int roomNum = int.parse(stdin.readLineSync()!);
      print('Please enter DateIn in the format yyyy-MM-dd:');
      String dateIn = stdin.readLineSync()!;
      print('Please enter DateOut in the format yyyy-MM-dd:');
      String dateOut = stdin.readLineSync()!;
      print(
          'Success Reserve car\n.........................................');
    } else {
      print('Thanks for register to our company\n.........................................');
    }
  } catch (e) {
    print(e.toString());
    return clientRegister();
  }
}

void addEmployee() {
  print('Enter Employee Name:');
  String name = stdin.readLineSync()!;
  print('Enter Employee Id:');
  String id = stdin.readLineSync()!;
  print('Enter Employee Nationality:');
  String nationality = stdin.readLineSync()!;
  print('Enter Employee ContactInfo:');
  String contactInfo = stdin.readLineSync()!;
  print('Enter Employee positionAtHotel:');
  String employeePosition = stdin.readLineSync()!;
  print('Enter Employee Gender:');
  String gender = stdin.readLineSync()!;
  print('Enter Employee age:');
  int? age = int.parse(stdin.readLineSync()!);
  var employees;
  employees.add(Employee(
      employeePosition: employeePosition,
      name: name,
      id: id,
      nationality: nationality,
      contactInfo: contactInfo,
      age: age,
      gender: gender,
      phone: ,
      adress: ''));
  print('Add Employee Success \n........................................');
}

void displayEmployee() {
  print("All Employee:");
  var employees;
  for (var employee in employees) {
    print(
        "Employee Name: ${employee.name}, Position: ${employee.employeePosition}, Contact Info: ${employee.contactInfo} ");
  }
  print('..........................................................');
}
void employeeValidation(String employeeName,String employeeId) {

  var employees;
  Employee? currentEmployee = employees.firstWhere((employee) =>
  employee.name == employeeName && employee.id == employeeId);
  if (currentEmployee.employeePosition.contains('manager')) {
    print(
        "What do you need ? \n1- All Reservation \n2-All Employee \n3-Add Employee \n4- Logout");
    int input = int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        displayReservation();
        return employeeValidation(employeeName, employeeId);
      case 2:
        displayEmployee();
        return employeeValidation(employeeName, employeeId);
      case 3:
        addEmployee();
        return employeeValidation(employeeName, employeeId);
      case 4:
        break;
    }
  } else if (currentEmployee.employeePosition == 'caprain') {
    print(
        "What do you need ? \n1- All Reservation \n2-Add client \n3-Logout");
    int input = int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        return employeeValidation(employeeName, employeeId);
      case 2:
        clientRegister();
        return employeeValidation(employeeName, employeeId);
      case 3:
        return employeeValidation(employeeName, employeeId);
    }
  } else {
    print('You are not authorized');
  }

}