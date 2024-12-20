import 'package:flutter/material.dart';
import 'package:flutter_unit_test/Salary_calculation.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var handlecon = TextEditingController();
  int? salary;
  SalaryCalculation sc = SalaryCalculation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Unit Testting',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("'Per Hour Payment 400 dollar"),
          TextField(
            controller: handlecon,
            decoration: InputDecoration(
                labelText: "Enter Working Hour", border: OutlineInputBorder()),
          ),
          ElevatedButton(
              onPressed: () {
                int hour = int.parse(handlecon.text);
                setState(() {
                  salary = sc.calculatesalary(hour);
                });
              },
              child: Text("Calculate Salary")),
          SizedBox(
            height: 10,
          ),
          if (salary != null) ...[
            Text('Your Salary(\$)'),
            Text(
              salary.toString(),
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            )
          ]
        ],
      ),
    );
  }
}
