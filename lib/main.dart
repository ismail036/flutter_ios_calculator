import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

String number =  " ";
double result = 0.0;
String numberm = " ";

String son = "+";

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    double buttonSize = 70.0;


    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  number.isNotEmpty ? number : " ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: (){
                      setState(() {
                        number = "";
                        k = false;
                        minus = false;
                        multip = false;
                        divid = false;
                        result = 0.0;
                        numberm = "";
                        number = "";
                        last = "";
                      });
                    },
                    child: Text(setACorC()),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text("+/-"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text("%"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      calculate("/");
                    });
                  },
                  child: Text(
                      "÷",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("7");
                    });
                  },
                  child: Text("7"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("8");
                    });
                  },
                  child: Text("8"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("9");
                    });
                  },
                  child: Text("9"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      calculate("x");
                    });
                  },
                  child: Text(
                    "x",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("4");
                    });
                  },
                  child: Text("4"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("5");
                    });
                  },
                  child: Text("5"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("6");
                    });
                  },
                  child: Text("6"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      calculate("-");
                    });
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("1");
                    });
                  },
                  child: Text("1"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("2");
                    });
                  },
                  child: Text("2"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("3");
                    });
                  },
                  child: Text("3"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      calculate("+");
                    });
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("0");
                    });
                  },
                  child: Text("0"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize*2+40 , buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber(",");
                    });
                  },
                  child: Text(","),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "=",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String setACorC(){
  if(number != ""){
    return "C";
  }
  result = 0;
  return "AC";
}

bool k = false;
bool minus = false;
bool multip = false;
bool divid = false;

void addNumber(String n){
  operationPresed = false;
  if(k==true){
    number = "";
    k = false;
  }
    if(number == "" && n == "0"){
       number += "";
    }else{
      number += n;
    }
}

void sum(){
  number = number.replaceAll(".", "");
  number = number.replaceAll(",", ".");
  if(son == "+"){
    result += double.parse(number);
  }
  print(result);
  number = result.toString().replaceAll(".0", "");
  k = true;
}
void subtract(){

  if(minus == false){
    number = number.replaceAll(".", "");
    number = number.replaceAll(",", ".");
    result += double.parse(number);
    print(result);
    number = result.toString().replaceAll(".0", "");
    k = true;
    minus = true;
  }else{
    number = number.replaceAll(".", "");
    number = number.replaceAll(",", ".");
    result -= double.parse(number);
    print(result);
    number = result.toString().replaceAll(".0", "");
    k = true;
  }
}
void multiply(){
  if(multip == false){
    number = number.replaceAll(".", "");
    number = number.replaceAll(",", ".");
    result += double.parse(number);
    print(result);
    number = result.toString().replaceAll(".0", "");
    k = true;
    multip = true;
  }else{
    number = number.replaceAll(".", "");
    number = number.replaceAll(",", ".");
    result *= double.parse(number);
    print(result);
    number = result.toString().replaceAll(".0", "");
    k = true;
  }
}
void divide(){
  if(result == 0 && divid == false){
    number = number.replaceAll(".", "");
    number = number.replaceAll(",", ".");
    result += double.parse(number);
    print(result);
    number = result.toString().replaceAll(".0", "");
    k = true;
    divid = true;
  }else{
    number = number.replaceAll(".", "");
    number = number.replaceAll(",", ".");
    result /= double.parse(number);
    print(result);
    number = result.toString().replaceAll(".0", "");
    k = true;
  }
}

bool operationPresed = false;

String last = "";

void calculate(String islem) {
  k = true;
  print(islem);
  print(last);
  if (last == "") {
    last = islem;
    number = number.replaceAll(".", "");
    result = double.parse(number);
    print(result);
    }
  else if(operationPresed == true) {
    last = islem;
  }else{
    switch (last){
      case "+":
        number = number.replaceAll(".", "");
        number = number.replaceAll(",", ".");
        result += double.parse(number);
        print(result);
        last = islem;
        number = result.toString().replaceAll(".0", "");
        break;
      case "-":
        number = number.replaceAll(".", "");
        number = number.replaceAll(",", ".");
        print(result);
        result -= double.parse(number);
        print(result);
        last = islem;
        number = result.toString().replaceAll(".0", "");
        break;
      case "x":
        number = number.replaceAll(".", "");
        number = number.replaceAll(",", ".");
        print(result);
        result *= double.parse(number);
        print(result);
        last = islem;
        number = result.toString().replaceAll(".0", "");
        break;
      case "/":
        number = number.replaceAll(".", "");
        number = number.replaceAll(",", ".");
        print(result);
        result /= double.parse(number);
        print(result);
        last = islem;
        number = result.toString().replaceAll(".0", "");
        break;

    }
    operationPresed = true;
  }
}
