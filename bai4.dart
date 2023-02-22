import 'dart:io';

void cau1(){
  List<String> hvt = ["Nguyễn","Thanh","Phong"];
  print(hvt);
}

void cau2(){
  List<String> fruits = ["Bưởi","Dứa","Bơ","Táo","Xoài"];
  for(int i=0;i<fruits.length;i++){
    print(fruits[i]);
  }
}

void cau3(){
  double S = 0;
  print("Nhập các khoản tiền cần tính: ");
  String? ckt = stdin.readLineSync();
  if(ckt!=null){
  List<String> tien = ckt.split(" ");
  tien.forEach((item){
  double x = double.parse(item);
  S += x;
 });
  print("Tổng số tiền vừa nhập là: $S");
  }
}

void cau4(){
  List<String> days= [];
  days.addAll(["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]);
  print(days);
}

void cau5(){
  List<String> fr=[];
  fr.addAll(["Việt","Nghĩa","Anh","Đạt","Trọng","Bùi","Quỳnh"]);
  List<String> srtA = fr.where((element) => element.startsWith("A")).toList();
  //use where to find a name start with 'a'
  print(srtA);
}

void cau6(){
Map<String,String> info = {
  'name': 'Phong',
  'address': 'Hải Phòng',
  'age': '22',
  'country' : 'VietNam'
};
print("Keys : ${info.keys}");
print("Values : ${info.values}");
info['country'] = 'Việt Nam'; //edit value of key 'country'
print("Values thay đổi : ${info.values}");
}

void cau7(){
Map<String,String> tt = {
  'name': 'Phong',
  'phone': '12345'
};
List<String> fk = tt.keys.where((element) => element.length==4).toList();
//find keys by where
print(fk);
}
List<String> task = ["\nDrink water","Change Clothes","Wear Shoes","Go to school"];
List<String> menu = ["\n1. Add new task","2. Remove task","3. View task","4. Exit"];
void add(){
  print("Nhập task mới");
  task.add("${stdin.readLineSync()}");
  print("\nThêm task thành công!");
}
void remove(){
  print("Bạn muốn xóa task thứ mấy?");
  int? xoa = int.tryParse(stdin.readLineSync()!);
  if(xoa!=null)
  task.remove(task[xoa-1]);
  print("\nXóa task thành công");
}
void pm(){  //print menu
  print("\nMenu");
  for(int i=0;i<menu.length;i++){
    print(menu[i]);
  };
}
void pt(){  //print task
  for(int i=0;i<task.length;i++){
    print(task[i]);
  };
}
void main() {
  cau1();
  cau2();
  cau3();
  cau4();
  cau5();
  cau6();
  cau7();
  print("\nToday Task");
  pt();
  pm();
  int x = -1;
  while(x!=4){
    print("Mời bạn nhập lệnh: ");
    x = int.parse(stdin.readLineSync()!);
    switch(x){
    case 1:
      add();
      pm();
      break;
    case 2:
      remove();
      pm();
      break;
    case 3:
      print("\nDanh sách task");
      pt();
      pm();
      break;
    case 4:
    break;
  }
  }
  
}