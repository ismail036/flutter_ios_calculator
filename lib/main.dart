import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
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

String number =  "0";
double result = 0.0;
String numberm = " ";

String son = "+";

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    double buttonSize = 85.0;


    return Container(
      color: Color(0xFF1C1C1C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
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
            padding: EdgeInsets.fromLTRB(14.0, 7.0, 14.0, 7.0),
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
                    child: Text(setACorC(),
                      style: TextStyle(color: Color(0xFF1C1C1C),fontSize: 30,fontWeight: FontWeight.w500),
                    ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFD4D4D2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("+/-");
                    });
                  },
                  child: Text("+/-",
                    style: TextStyle(color: Color(0xFF1C1C1C),fontSize: 30,fontWeight: FontWeight.w500),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFD4D4D2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      calculate("%");
                    });
                  },
                  child: Text("%",
                    style: TextStyle(color: Color(0xFF1C1C1C),fontSize: 30,fontWeight: FontWeight.w500),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFD4D4D2),
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
                    style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w500),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF9500),
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
            padding:  EdgeInsets.fromLTRB(14.0, 7.0, 14.0, 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("7");
                    });
                  },
                  child: Text("7",
                    style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                  child: Text(
                    "8",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                  child: Text("9",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                    style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF9500),
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
            padding: EdgeInsets.fromLTRB(14.0, 7.0, 14.0, 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("4");
                    });
                  },
                  child: Text("4",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                  child: Text("5",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                  child: Text("6",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                    style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF9500),
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
            padding:  EdgeInsets.fromLTRB(14.0, 7.0, 14.0, 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("1");
                    });
                  },
                  child: Text("1",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                  child: Text("2",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                  child: Text("3",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
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
                    style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF9500),
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
            padding: EdgeInsets.fromLTRB(14.0, 7.0, 14.0, 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                      addNumber("0");
                    });
                  },
                  child: Text("0",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize*2+15 , buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      addComma();
                    });
                  },
                  child: Text(",",
                      style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400)
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF505050),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      calculate("=");
                    });
                  },
                  child: Text(
                    "=",
                    style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w400),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF9500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(buttonSize / 2),
                    ),
                    fixedSize: Size(buttonSize, buttonSize),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
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
  if(n == "+/-"){
    if(double.parse(number) > 0){
      number = "-" + number;
    }else if(double.parse(number) < 0){
      number = number.substring(1);
    }
  }else{
    if(number == "0" && n == "0"){
      number += "";
    }else if(number == "0" && n != "0"){
      number = "";
      number += n;
    } else{
      number += n;
    }
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
    number = number.replaceAll(",", ".");
    result = double.parse(number);
    print(result);
    operationPresed = true;
    }
  else if(islem != "=" && operationPresed == true) {
    last = islem;
  }else{
    number = number.replaceAll(".", "");
    number = number.replaceAll(",", ".");
    switch (last){
      case "+":
        result += double.parse(number);
        break;
      case "-":
        result -= double.parse(number);
        break;
      case "x":
        result *= double.parse(number);
        break;
      case "/":
        result /= double.parse(number);
        break;
      case "%":
        result *= double.parse(number)/100;
        break;
    }
    result = result.toPrecision(5);
    if(result > 1){
      number = result.toString().replaceAll(".0", "");
    }else{
      number = result.toString();
    }
    operationPresed = true;
  }
  if(islem != "="){
    last = islem;
  }
}

void  addComma(){
  if(k==true){
    number = "";
    k = false;
  }
  if(number.contains(",") == false){
    if(number == ""){
      number = "0,";
    }else{
      number += ",";
    }
  }
}


extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}