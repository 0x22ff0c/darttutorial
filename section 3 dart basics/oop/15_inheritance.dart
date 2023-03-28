

/**
 * Inheritance
 * - Inheriance allows the extension of classes
 * - Example: Class person, Class student
 *      - Student class inherits all functionalities fro mthe person class.
 *      - Student class have own methods and attributes
 * 
 * Mixins
 * - Possibility of multiple inheritance
 * - user of defined functionalities in addition to inheritance
 */
void main() {

  Student student = new Student();
  student.setSemester = 2;
  student.setName = "Student first name Student last name";
  student.setAge = 22;
  student.study();
  student.jump();

  Person person = new Person();
  person.setName = "First name Last name";
  person.setAge = 20;

  int semester = student.getSemester;

  print('Semester: $semester');


}

mixin Learner {
  void study(){
    print('study');
  }
}

mixin Jumper{
  void jump(){
    print('I can jump');
  }
}

class Person{
  
  late String _name;
  late int _age; 

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name){
    this._name = name;
  }

  set setAge(int age){
    this._age = age;
  }

  void run(){
    print('$_name runs.');
  }

}

class Student extends Person with Learner, Jumper {

  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int semester){
    this._semester = semester;
  }

  void party(){
      print('$_name is on a party.');
  }
}