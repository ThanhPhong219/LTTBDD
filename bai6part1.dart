import 'dart:io';

class Laptop{
    String? id,name,ram;
    void hien(){
        print("Ma may tinh: $id");
        print("Ten may tinh: $name");
        print("Ram : $ram");
}
}
class House {
  String? id,name,prize;

  House(String id, String name,String prize){
    this.id = id;
    this.name = name;
    this.prize = prize;
  }
  void hien(){
        print("Địa chỉ: $id");
        print("Tên nhà: $name");
        print("Prize : $prize");
}
}
void main(){

  Laptop l = Laptop();
  l.id = "LT1";
  l.name = "Asus";
  l.ram = "1TB";
  l.hien();

  House h1 = House("Kiến An","Nhà số 1","Opened");
  House h2 = House("Hải An","Nhà số 2","Closed");
  House h3 = House("Lê Chân","Nhà số 3","Opened");
  List<House> h = [];
  h.add(h1);
  h.add(h2);
  h.add(h3);
  for(House Houses in h){
    print(Houses.id);
    print(Houses.name);
    print(Houses.prize);
  }
}
