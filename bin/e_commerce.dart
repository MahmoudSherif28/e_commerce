import 'client.dart';
import 'employee.dart';
import 'page.dart';
import 'system.dart';

void main() {
  Client c1 = Client(
      name: 'ali',
      id: '2030',
      nationality: 'nationality',
      contactInfo: 'ahmed@gmail.com',
      age: 20,
      gender: 'male',
      adress: 'mansoura',
      phone: '0101111');

  system.employees.addAll(
    [
      Employee(
          employeePosition: 'manager',
          name: 'mahmoud',
          id: '30301261202039',
          nationality: 'Egyptian',
          contactInfo: 'elkbbany@gmail.com',
          age: 20,
          gender: 'male',
          adress: 'mansoura',
          phone: '010'),
      Employee(
          employeePosition: 'manager',
          name: 'khaled',
          id: '30301201202039',
          nationality: 'Egyptian',
          contactInfo: 'khaled@gmail.com',
          age: 21,
          gender: 'male',
          adress: 'mansoura',
          phone: '0101111')
    ],
  );
  page();
}

