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
    print(lastName!.length);

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
}
