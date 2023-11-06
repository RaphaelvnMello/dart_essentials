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

    // but we can transform a top level variavle in local variable.
    var localVariable = topLevelVariables2;
    print(localVariable);

    //we can use "?" to check with the variable is null.
    //Conditional property access
    print(topLevelVariables2?.length);
    String? noValue;
    noValue = null;
    print(noValue?.length);

    //null aware operator
    String brand = "Ford";
    String? model;
    String car;

    // ignore: dead_code
    car = model?.toLowerCase() ?? brand;
    print(car);
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

  void list() {
    List<int> numbers = [1, 2, 3];
    print(numbers);
    var numbers1 = [1, 2, 3];
    print(numbers1);
    List<int> emptyList = [];
    print(emptyList);
    var emptyList1 = <int>[];
    print(emptyList1);
    //non-null
    List<String> names = ["Pedro", "Paulo", "José"];
    print(names);
    //null
    List<String>? names1;
    print(names1);
    //null values
    List<String?> names2 = [null, "Pedro", null];
    print(names2);
    //can be null or with null values
    List<String?>? names3 = [null, null, null];
    print(names3);

    // add itens in a list
    numbers.add(4);
    print(numbers);

    names.add("Maria");
    names.addAll(["Luiz", "Fernando", "Bento"]);
    print(names);
    print(names[3]);

    //insert data in a specific position
    numbers.insert(0, 0);
    print(numbers);

    //remove element
    names.remove("Fernando");
    print(names);

    names.removeWhere((element) => element == "Luiz");
    print(names);

    //search value
    var numbersWhere = numbers.firstWhere((element) => element == 1);
    print(numbersWhere);

    //generate numbers
    final generateNumbers = List.generate(10, (index) => index);
    print(generateNumbers);

    //filled values

    final filledNumbers = List.filled(10, 10);
    print(filledNumbers);

    var sum = generateNumbers.fold(
        0, (previousValue, element) => previousValue + element);
    print(sum);

    // spread operator
    var spreadListOne = [1, 2, 3];
    var spreadlist = [...spreadListOne, 4, 5, 6];
    print(spreadlist);

    //Collection if
    bool isSale = true;

    var products = [
      "sandwitch",
      "juice",
      if (isSale) "fries",
    ];
    print(products);

    //Collection for
    var itens = [1, 2, 3];

    var index = [
      '0',
      for (var i in itens) '$i',
    ];
    print(index);
  }

  void loop() {
    var numeros = List.generate(10, (index) => index);
    var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];

    for (var i = 0; i < numeros.length; i++) {
      print(numeros[i]);
    }

    for (var i = 0; i < nomes.length; i++) {
      print(nomes[i]);
      if (i == 2) {
        break;
      }
    }

    for (var i = 0; i < nomes.length; i++) {
      print(nomes[i]);
      if (i == 2) {
        continue;
      }
    }

    for (var nome in nomes) {
      print(nome);
    }

    var numbers = 0;
    while (numbers <= 10) {
      numbers++;
      print(numbers);
    }
    do {
      numbers--;
      print(numbers);
    } while (numbers > 0);

    //interables

    numeros
        .where((element) => element != 3)
        .forEach((element) => print(element));

    var numbersStr = numeros.map((e) => '$e').toList();
    print(numbersStr);
  }
}
