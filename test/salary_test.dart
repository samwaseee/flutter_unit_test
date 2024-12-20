import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/Salary_calculation.dart';

void main(){
  //single unit test
  test('Single Test',(){
    SalaryCalculation sc=SalaryCalculation();
    int salary=sc.calculatesalary(45);
    expect(salary, 19000);
  });

  group('Salary Calculation Tests', () {
    // Test for 35 hours
    test('Calculate salary for 35 hours', () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(35);
      expect(salary, 14000);
    });

    // Test for 45 hours
    test('Calculate salary for 45 hours', () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(45);
      expect(salary, 19000);
    });

    // Additional test cases
    test('Calculate salary for 40 hours', () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(40);
      expect(salary, 16000);
    });

    test('Calculate salary for 50 hours', () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(22000);
    });

    test('Calculate salary for 30 hours', () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculatesalary(30);
      expect(salary, 12000);
    });
  });

}