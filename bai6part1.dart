class Laptop{
  String? id,name,ram;
  void hien(){
      print("Ma may tinh: $id");
      print("Ten may tinh: $name");
      print("Ram : $ram");
}
}
void cau1(){
  Laptop l0 = Laptop();
  l0.id = "LT0";
  l0.name = "Asus";
  l0.ram = "1TB";
  Laptop l1 = Laptop();
  l1.id = "LT1";
  l1.name = "Dell";
  l1.ram = "1TB";
  Laptop l2 = Laptop();
  l2.id = "LT2";
  l2.name = "Mac";
  l2.ram = "1TB";
  l0.hien();
  l1.hien();
  l2.hien();
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
void cau2(){
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
void main(){
  cau1();
}
