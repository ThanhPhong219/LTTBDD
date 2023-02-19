import 'dart:math';
import 'dart:io';
import 'dart:core';

//Câu 1
void printname(){
  print("Nguyễn Thanh Phong");
}
//Câu 2
void insochan(){
  print("Dãy số chẵn: ");
  for (int i =0;i<=100;i++){
    if(i%2==0){
      print(i);
    }
  }
}
//Câu 3
void rd_mk() {
    var rd = Random();
    print("Nhập độ dài mật khẩu: ");
    int n = int.parse(stdin.readLineSync()!);
    String mk =String.fromCharCodes(List.generate(n, (index)=> rd.nextInt(33) + 89));
    print(mk);
}
//Câu 4
void dtht(){
  print("Nhập bán kính hình tròn : ");
  int r = int.parse(stdin.readLineSync()!);
  double dt = (3.14*pow(r,2));
  print("Diện tích hình tròn có bán kính $r là : $dt");
}
//Câu 5
void pytago(){
  print("Nhập độ dài cạnh góc vuông thứ nhất: ");
  int c1 = int.parse(stdin.readLineSync()!);
  print("Nhập độ dài cạnh góc vuông thứ hai: ");
  int c2 = int.parse(stdin.readLineSync()!);
  var c3 = sqrt(c1*c1 + c2*c2);
  print("Độ dài cạnh huyền là : $c3");
}
//Câu 6
void daochuoi(){
  print("Nhập chuỗi muốn đảo ngược: ");
  String? str = stdin.readLineSync();
  if(str!=null){
    print("$str đảo ngược là ${str.split('').reversed.join()}"); 
  }
}
//Câu 7 
void luythua(){
  print("""Nhập lũy thừa cần tính 
  Ví dụ mẫu : 5^3 """);
  String? lt = stdin.readLineSync();
  if(lt!=null){
    List<String> list = lt.split("^");
    int soluythua = int.parse(list[0]);
    int somu = int.parse(list[1]);
    num kqlt = pow(soluythua,somu); 
    print("$lt = $kqlt");
  }
  
}
void main(){
  printname();
  insochan();
  rd_mk();
  dtht();
  pytago();
  daochuoi();
  luythua();
}