//Top-level variables must be initialize
String topLevelVariables = "Top Level";
String? topLevelVariables2;

class Essentials {
  Essentials();

  void variables() {
    //Most common variables types are: int, double, String, bool.
    //But we can initialize a variable with var or dynamic.
    //Dart variables are written in camelCase.

    //numbers
    num numbersInt = 45;
    num numbersDoubble = 4.5;
    print("numbersInt: $numbersInt, numbersDoubble: $numbersDoubble");

    //integers
    int idade = 30;
    int year = 2023;
    print("idade: $idade, year: $year");

    //decimals

    double grade = 9.9;
    double juicePrice = 8.5;
    print("grade: $grade, juicePrice: $juicePrice");

    //Texts

    //String
    String name = "Raphael";
    // we can use "" or ''.
    print("name: $name");

    //Boolean

    bool isDart = true;
    bool isFlutter = false;
    print("isDart: $isDart, isFlutter: $isFlutter");

    //var
    var variables = "any value";
    var canBool = true;

    //with var we can't assign the same variable with another type.
    //canBool = "true";
    print("variables: $variables, canBool: $canBool");

    //dynamic
    dynamic isVar = false;
    dynamic timeLeft = 0.05;
    //with dynamic we can assignt the same variable with another type.
    timeLeft = 5;

    print("isVar: $isVar, timeLeft: $timeLeft");

    //All classes in dart inherit from object

    Object objectClasse = 007;
    print("objectClasse: $objectClasse");
  }

  void nullSafety() {
    //We can use '?' as an operator to inform that the variable is null.

    String? lastName;

    //Locals variables we can initialized after the declaration.
    lastName = null;

    //If the variable is can be null we can't access a property.
    //print(lastName.length);

    //So we need check if the variable is null before accessing the property.
    if (lastName != null) {
      print(lastName.length);
    }
    print(lastName);

    // We can guarantee that variable is not null with operator '!'
    //print(lastName!.length);

    //Dart can promoted locals variables.
    lastName = "mello";
    print(lastName.length);

    //But we can't promoted top level variables.
    topLevelVariables2 = "superior";
    //we can use "?" to check with the variable is null.
    print(topLevelVariables2?.length);
    String? noValue;
    noValue = null;
    print(noValue?.length);
  }

  void modifiers() {
    //final
    //The data must be configured in runtime
    final String nameFinal;
    nameFinal = "Raphael";
    print(nameFinal);

    //const
    //The data must be configured at compile time
    final String nameConst = "Raphael";
    print(nameConst);
  }

  void condition() {
    //Relational operators
    //6 types
    // == (equal), != (different), > (greater then), < (less then), >= (greater than or equal to), <= (less than or equal to)
    final int age = 16;
    bool isOver = age >= 16;
    if (isOver) {
      print("You can get your car license");
    } else {
      print("You are not old enough");
    }

    //Logic Operators
    //&& (And)
    //All conditions must be true
    final double bmi = 30.0;

    if (bmi >= 30) {
      print("You are obese");
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      print("You are normal");
    } else if (bmi < 18.5) {
      print("you are thin");
    }
    // || (Or)
    //Just one condition must be true
    bool isCat;
    bool isDog;
    isDog = true;
    isCat = true;
    if (isDog) {
      print("Is is a dog");
    }
    if (isCat) {
      print("Is is a Cat");
    }
    isDog = false;
    if (isDog || isCat) {
      print("Is is a dog or a cat");
    }
    // ! (not)
    //Just one condition must be true
    bool isTurtle;

    isTurtle = false;
    if (!isTurtle) {
      print("Is is not a turtle");
    }

    //ternary operator
    age > 18 ? print("Is over 18") : print("is under 18");

    //switch
    final dayOfWeek = 0;
    switch (dayOfWeek) {
      case 0:
        print("Monday");
        break;
      case 1:
        print("Tuesday");
        break;
      case 3:
        print("Wednesday");
        break;
      case 4:
        print("Thursday");
        break;
      case 5:
        print("Friday");
        break;
      case 6:
        print("Saturday");
        break;
      default:
        print("Sunday");
        break;
    }
  }
}
