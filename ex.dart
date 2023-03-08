/*

Exercise 3:
Inside it define a name and an age variables, and set_value() function.
Then create two bases variables 
Zebra and Dolphin which write a message telling the age,
the name and giving some extra information (e.g. place of origin). */


abstract class Shape{
  int width,height;
  Shape(this.width,this.height);
  void area();
}
class Triangle extends Shape{
  Triangle (int width,int height):super(width,height);
  @override
  void area(){
    print("Diện tích của tam giác: ${0.5 * width * height}");
  }
}
class Rectangle extends Shape{
  Rectangle(int width,int height):super(width,height);
  @override
  void area(){
    print("Diện tích hình chữ nhật là : ${width*height}");
  }
}
class Mother{
  void display(){
    print("8/3 vui vẻ con nhé");
  }
}
class Daughter extends Mother{
  @override
  void display(){
    print("Chúc mẹ 8/3 vui vẻ");
  }
}

class Animal{
  String? name;
  int? age;
  Animal.set_value(String name,int age){
    this.name = name;
    this.age = age;
  }
}
void animal_quiz(){
  Animal Zebra = Animal.set_value("Z1",6);
  print("Hi I\'m ${Zebra.name}. My age is ${Zebra.age}");
  Animal Dolphin = Animal.set_value("D1", 8);
  print("Hi I\'m ${Dolphin.name}. My age is ${Dolphin.age}");
}
void main(){

  Rectangle r = Rectangle(10, 20);
  r.area();
  Triangle t = Triangle(10, 20);
  t.area();

  Daughter daughter = Daughter();
  daughter.display();

  animal_quiz();
}