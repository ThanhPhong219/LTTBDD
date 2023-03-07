import 'dart:math';

class Info{
  // late variable
  late String address;

  void show() {
    print("My Address: $address");
  }
}
void cau2(){
  Info i = Info();
  i.address = "US";
  i.show();
}
void cau4(){
  int? age;
  print("Age is : $age");
}
void cau5(){
  String? name;
  name = null;
  String? name1;
  name1 ??=name;
  print("Name value: $name1");
}
int generateRandom(){
  int status=0;
  int? randomNum;
  randomNum = Random().nextInt(2)*100;
  if(randomNum==0){
    randomNum = null;
    status=0;
    print("Status : $status\nrandomNum : $randomNum");
  }else{
    randomNum=status=100;
    print("Status : $status\nrandomNum : $randomNum");
  }
  return status;
}
void main() {
  generateRandom();
}