import 'dart:io';

enum Gender{male, female, others}
void cau3(){
  print("Gender list");
  for(Gender gen in Gender.values){
    print(gen);
  }
}

class Animal{
  String? id;
  String? name;
  String? color;
  }
class Cat extends Animal{
  String? sound;
}

class Camera{
  String? _id, _brand, _color, _prize;
  String getID(){
    return _id!;
  }
  String getBrand(){
    return _brand!;
  }
  String getColor(){
    return _color!;
  }
  String getPrize(){
    return _prize!;
  }
  void setID(String id){
    this._id = id;
  }
  void setBrand(String brand){
    this._brand = brand;
  }
  void setColor(String color){
    this._color = color;
  }
  void setPrize(String prize){
    this._prize = prize;
  }
}

void main(){
  
  cau3();
  
  var c = Cat();
  c.id = "C1";
  c.name = "Mèo Anh";
  c.color = "Xám";
  c.sound = "Meow";
  print("${c.id} ${c.name} ${c.color} ${c.sound}");
  
  Camera cam = new Camera();
  cam.setID("Cam");
  cam.setBrand("Sony"); 
  cam.setColor("Black");
  cam.setPrize("500");
  Camera cam1 = new Camera();
  cam1.setID("Cam1");
  cam1.setBrand("SamSung"); 
  cam1.setColor("Yellow");
  cam1.setPrize("500");
  Camera cam2 = new Camera();
  cam2.setID("Cam2");
  cam2.setBrand("Topo"); 
  cam2.setColor("White");
  cam2.setPrize("500");
  List<Camera> cm = [];
  cm.add(cam);
  cm.add(cam1);
  cm.add(cam2);
  for(Camera cams in cm){
    print("${cams.getID()},${cams.getBrand()},${cams.getColor()},${cams.getPrize()}");
  } 
}