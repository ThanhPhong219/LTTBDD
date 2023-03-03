import 'dart:io';
abstract class Bottle{
  void open(){
  }
  void close(){
  }
  factory Bottle(String? type){
    switch (type) {
      case "CokeBottle":
        return CokeBottle();
      default:
        throw 'Invalid drink type';
    }
  }
}
class CokeBottle implements Bottle{
  @override
  void open(){
    print("Coke bottle is opened");
  }
  void close(){
    print("Coke bottle is closed");
  }
}

abstract class True{
  int truee();
}
abstract class Fasle{
  void faslee();
}
List<String> comm = ["\n1. Do Quizz","2. See The Result","3. Exit"];
void pc(){ //print command
  for(int i =0;i<comm.length;i++){
    print(comm[i]);
  }
}
int score = 0;
class choose implements True,Fasle{
  @override
  int truee(){
    return score = (score + 10);
  }
  @override
  int faslee(){
    return score ;
  }
  choose(String dapan);
}
void doq(){//do quizz
  score = 0;
  print("Phong có đẹp trai không? A.Có/B.Không");
  String dapan = stdin.readLineSync()!;
  switch (dapan) {
    case "a":
    case "A":
      choose c = choose("A");
      c.truee();
      break;
  }
  print("Chọn B để được thêm 10 điểm A.Có/B.Không");
  dapan = stdin.readLineSync()!;
  switch (dapan) {
    case "b":
    case "B":
      choose c = choose("B");
      c.truee();
      break;
    default:
  }
}

void sr(){//see result
  print("Số điểm của bạn là : $score /20");
}
void cau6(){
  Bottle cb = Bottle("CokeBottle");
  cb.open();
}
void cau7(){
  pc();
  int x = -1;
  while(x!=3){
    print("Mời bạn nhập lệnh: ");
    x = int.parse(stdin.readLineSync()!);
    switch(x){
    case 1:
      doq();
      pc();
      break;
    case 2:
      sr();
      pc();
      break;
    case 3:
      break;
  }
  }
}
void main(){
  cau6();
}