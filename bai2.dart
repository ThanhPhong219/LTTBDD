import 'dart:collection';
import 'dart:io';

void main(){
  //Câu 1
  print("Nhập số cần kiểm tra : ");
  int a = int.parse(stdin.readLineSync()!);
  void ktchanle(){
    if(a%2==0){
      print("Số $a là số chẵn");
    }
    else{
      print("Số $a là số lẻ");
    }
  }
  ktchanle();
  //Câu 2
  print("Nhập kí tự cần kiểm tra: ");
  String? str = stdin.readLineSync();
  void ktkitu(){
    switch (str) {
    case 'o':
    case 'O':
    case 'u':
    case 'U':
    case 'i':
    case 'I':
    case 'a':
    case 'A':
    case 'e':
    case 'E':
      print("Đây là nguyên âm");
      break;
    default:
      print("Đây là phụ âm");
      break;
    }
  }
  ktkitu();
  //Câu 3
  print("Nhập số cần kiểm tra : ");
  a = int.parse(stdin.readLineSync()!);
  void kiemtraso(){
    if(a==0){
      print("Đây là số 0");
    }
    else if(a>0){
      print("Đây là số dương");
    }
    else{
      print("Đây là số âm");
    }
  }
  kiemtraso();
  //Câu 4
  print("Nhập tên của bạn : ");
  String? ten = stdin.readLineSync();
  for(int i = 0; i<100;i++){
    print("$ten");
  }
  //Câu 5
  print("Nhập số cần tính tổng : ");
  int n = int.parse(stdin.readLineSync()!);
  int s = 0;
  for(int i =0;i<=n;i++){
    s += i;
  }
  print("Tổng dãy số tự nhiên là : $s");
  //Câu 6
  print("Bảng cửu chương 5");
  for(int i=1;i<=10;i++){
    int giatri = i*5;
    print("$i * 5 = $giatri");
  }
  //Câu 7
  print("Bảng cửu chương");
  for(int i=1;i<10;i++){
    for(int j=1;j<=10;j++){
      int giatri = i * j;
      print("$i * $j = $giatri");
    }
  }
  
  //Câu 8
  print("Nhập số thứ nhất : ");
  int abc = int.parse(stdin.readLineSync()!);
  print("Nhập loại phép tính: ");
  String? pheptinh = stdin.readLineSync();
  print("Nhập số thứ hai: ");
  int bcd = int.parse(stdin.readLineSync()!);
  num kq = 0;
  bool kt;
  switch(pheptinh)
  {
        case '+': 
            kq = abc + bcd;
            print("$abc + $bcd = $kq");
            break;
        case '-': 
            kq = abc - bcd;
            print("$abc - $bcd = $kq");
            break;
        case '*': 
            kq = abc * bcd;
            print("$abc * $bcd = $kq");
            break;
        case '/':
            if (bcd != 0) {
                kq = abc / bcd ;
                print("$abc / $bcd = $kq");
            } else {
                kt = false;
                print("Mẫu số phải khác 0");
            }
            break;
        default: 
            print("Toán tử không hợp lệ");
  }
  //Câu 9
    for(int i=1;i<=100;i++){
      if(i==41){
        continue;
        }
   else{
     print(i);
       }
    }
}
