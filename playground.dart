/*
LEARNING DART - FREE CODE CAMP
https://www.youtube.com/watch?v=Ej_Pcr4uC2Q

// ** RECOMMENT / desired functions in the MAIN() FUNCTION, COMMENT OUT unused functions.
// ** NOTE:the contents of the document aren't desired to be run as one entity.
// ** RUN 'dart (filename.dart) in terminal to run & print dart commands functions.


| ** CH.01 - fundamentals 
-------------------------------------------------------------
statically typed language
supports ahead of time (AOT) & just in time (JIT - runtime)
Object orientated
*/

///Documentation comment
import 'dart:io';

void main() {
  /* 
  CH 01
  */
  //stringConcat();
  //writeInTerminal();
  //variableTypes();

  /* 
  CH 02
  */
  
  //stringTypes();
  //typeConversionExample();
  //typeConstants();

  /* 
  CH 03
  */
  
  //ternaryOperator();
  //switchConditional();

  /* 
  CH 04
  */

  //standardFor();
  //forIn();
  //forEach();
  //whileLoop();
  //whileLoopDo();
  //breakAndContinue();
  //printOddUsingContinue();
  //collection


  /* 
  CH 05
  */

  //listFunction();
  //collectionFunction();
  //mapFunction();

  /* 
  CH 06 
  */
}

stringConcat() {
  var firstName = 'aaron';
  String lastName = 'moroney';
  print(firstName + ' ' + lastName);
}

//stdin - library allows in / out to be showed in terminal

writeInTerminal() {
  stdout.writeln('what is your name: ?');
  var name = stdin.readLineSync();
  //string interpolation
  print('my name is $name');
}

/*
 int
 double
 String
 bool
 dynamic
*/


variableTypes() {
  int amount1 = 100;
  var amount2 = 200;

  print('Amount 1: $amount1 | Amount2: $amount2');

  String firstName = 'aaron';
  var lastName = 'moroney';

  print('my name is: $firstName $lastName \n');

  dynamic weakVariable = 100; 
  print('weakVarible 1: $weakVariable \n');

  //we can change this variable, the above will still print in sequence
  weakVariable = 'dart programming';
  print('weakVariable 2: $weakVariable \n');
}


/*
** | CH 02 - String, Type conversion, Constant, null
-------------------------------------------------------------
timeStamp 15:47
*/


stringTypes() {
  var age = 28;
  var s1 = 'use single quotes for strings literals, you have to escape \' special charectors';
  var s2 = "you don't need to escape double quotes ''' " ;
  //r infront of string defines a raw string 
  var s3 = r'in a raw string, not even \n gets special treatment';
  var s4 = 'I am $age years of age';
 
  //print to test
  print(s4);

  var multiline = '''
hello
world
what's up?
''';
  print(multiline);
} 



typeConversionExample() {
  //TYPE CONVERSION - string -> int
  var one = int.parse('1');
  //ASSERT function is used to verify
  assert(one == 1);
  //string -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  print(onePointOne);

  String piAsString = 3.14159.toStringAsFixed(3);
  print(piAsString);

  String oneAsString = 1.toString();
  print(oneAsString);
}

//setting type constants - will reamain the value type


typeConstants() {
  const myString = 'a constant string';
  const myBool = true;
  const myInteger =1;

  print(myString.runtimeType);
  print(myBool.runtimeType);
  print(myInteger.runtimeType);
}

/*
** | CH 03 - OPERATORS
-------------------------------------------------------------
timeStamp 23:52
*/

//num *= 2 === multiply num by 2
//print num

/* 
NULL AWARE OPERATOR 
timestamp: 27:04 - 33:50, research on docs - causing errors in current Dart ENV.
*/

/*
TERNARY OPERATOR
*/


ternaryOperator() {
  //% means remainder
  int x = 101;
  var result = x % 2 == 0 ? 'even' : 'odd';
  print(result);
  //type check
  if (x is int) {
    print('integer');
  }
}


/*
CONDITIONAL STATEMENT - same as JS
CONDITIONAL STATEMENT - SWITCH
*/


switchConditional() {
  int number = 1;
 
  switch(number) {
    //0 == the test case
    case 0:
      print('even');
      break;
      //1== the test case
    case 1:
      print('odd');
      break;
    default:
      print('confused');
  }
}

/*
** | CH 04 - LOOPING
-------------------------------------------------------------
timeStamp 39:19
*/

//STANDARD FOR LOOP
standardFor() {
  for (var i = 1; i <= 10; i++ ) {
    print(i);
  }
}

//FOR IN LOOP
forIn() {
  var numbers = [1,2,3,4,5];
  for (var n in numbers ) {
    //multiply
    print(n);
  }
}


//FOR EACH LOOP
forEach() {
  var numbers = [1,2,3,4,5];
  //operates like an 
  numbers.forEach((n) => print(n));
}


//WHILE LOOP
whileLoop() {
  int num = 5;
  
  while (num > 0) {
    print(num);
    //decrement
    num -= 1;
  }
}

//do variation
whileLoopDo() {
  int num = 5;
  
  do {
    print(num);
    num -= 1;
  } while (num > 0);
}

//break and continue
void breakAndContinue() {
  for (var i = 0; i < 10; i++) {
    if (i > 5) break;
    print(i);
  }
}

void printOddUsingContinue() {
  for (var i = 0; i < 10; i++) {
    //body of condition
    // if i divided by 2 has no floating point remainder
    if (i % 2 == 0) continue; //don't break out of loop when true is returned 
    print('odd: $i');
  }
}

/*
** | CH 05 - Collection[list, set, map]
-------------------------------------------------------------
timeStamp 48:04
*/

/*
built in collection types  - list, set + map

list is basically an ordered copllection of values 
Other languages, like JS - called an array
*/

//list

void listFunction() {
  List <String> names = ['aaron', 'josh', 'lydia'];
  //mutable
  names[1] = 'paul';
  print('this print is' + " " + names[1]); //prints 'this print is paul'

  //not actually copying - it is pointing to the original 
  var names2 = names;
  names[1] = 'mark';
  //now prints the updated names list
  print(names2); //[aaron, mark, lydia]

  //to clone, use spread operator
  var names3 = [...names];
}

//set
collectionFunction() {
  var halogens = {'flourine', 'chlorine', 'flourine'};
  //set is a unique collection of items: eg
  for(var x in halogens) {
    print(x);
  } //only prints floruine once
}

//map
mapFunction() {
  var gifts = {
    2: 'partridge',
    1: 'turtledoves',
    3: 'golden rings',
  };
  print(gifts[3]);

  //define as empty then assign.
  var fruits = {};
  fruits['first'] = 'Mango';
  print(fruits['first']);
}

/*
** | CH 06 - Function[list, set, map]
-------------------------------------------------------------
timeStamp 1:01:11
*/




