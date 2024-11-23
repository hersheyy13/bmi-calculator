
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BMICalculatorHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BMICalculatorHome extends StatefulWidget {
  @override
  _BMICalculatorHomeState createState() => _BMICalculatorHomeState();
}

class _BMICalculatorHomeState extends State<BMICalculatorHome> {
  bool isMale = true;
  double height = 170;
  double weight = 60;
  double bmi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onbackButtonPressed(context),
      child : Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Color.fromARGB(108, 93, 151, 113),
      ),
      backgroundColor: const Color.fromARGB(255, 102, 170, 110),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isMale ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/male.png', // Add your male image here
                          height: 80,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isMale ? Colors.white : Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/female.png', // Add your female image here
                          height: 80,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Height: ${height.toStringAsFixed(0)} inch'),
                  Slider(
                    value: height,
                    min: 100,
                    max: 220,
                    activeColor: const Color.fromARGB(255, 102, 170, 110),
                    onChanged: (value) {
                      setState(() {
                        height = value;
                        calculateBMI();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Weight: ${weight.toStringAsFixed(0)} kg'),
                  Slider(
                    value: weight,
                    min: 30,
                    max: 150,
                    activeColor: const Color.fromARGB(255, 102, 170, 110),
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                        calculateBMI();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 160, 220, 162),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    'Your BMI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    
    );
    
  }

  void calculateBMI() {
    bmi = weight / ((height / 100) * (height / 100));
  }
  
  Future<bool> _onbackButtonPressed(BuildContext context) async{
   bool? exitAPP = await showDialog(
    context: context,
    builder: (BuildContext context) {
      
    
    
    return AlertDialog(
      title: Text('Exit App'),
      content: Text('Do you want to exit'),
      actions: <Widget> [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text('Yes'),
        ),
      ],
    );
    }
   );
     return exitAPP ?? false;
  }
  
}
