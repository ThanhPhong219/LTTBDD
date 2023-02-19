import 'dart:io';
void main() {
  //Câu 1
  print("Nguyen Thanh Phong");
  //Câu 2
  print("Hello I am \"John Doe\" ");
  print("Hello I\'m \"John Doe\" ");
  //Câu 3
  const int abcd = 8;
  //Câu 4
  int p =7,t= 100, r=6;
  double Formula = (p*t*r)/100;
  print(Formula);
  //Câu 5
  print("Nhập số cần tính : ");
    int num = int.parse(stdin.readLineSync()!);
    int x = num * num; 
    print("Bình phương số vừa nhập là : $x");
  //Câu 6
    print("Nhập họ của bạn : ");
    String? ho = stdin.readLineSync();
    print("Nhập tên của bạn : ");
    String? ten = stdin.readLineSync();
    print("Tên của bạn là : $ho $ten ");
  //Câu 7 
    print("Nhập a :");
    int a = int.parse(stdin.readLineSync()!);
    print("Nhập b :");
    int b = int.parse(stdin.readLineSync()!);
    double thuong = a/b ;
    int sodu = a%b;
    print("a/b = $thuong");
    print("a%b = $sodu");
    
  //Câu 8
    print("Chương trình đổi chỗ hai số");
    void doicho(){
    int temp = a;
    a = b;
    b = temp;
    }
    doicho();
    print("Số a mới là : $a");
    print("Số b mới là : $b");
  //Câu 9
    String str = ' Ví dụ câu 9 ';
    String newstr= str.replaceAll(' ', '');
    print(newstr);
  //Câu 10
    String ab = '10';
    int cvString = int.parse(ab);
    print("Biến ab có kiểu : ${ab.runtimeType}");
    print("Biến cvString có kiểu : ${cvString.runtimeType}");
  //Câu 11
    print("Nhập số tiền trên hóa đơn: ");
    int hd = int.parse(stdin.readLineSync()!);
    print("Nhập số người ăn : ");
    int soluong = int.parse(stdin.readLineSync()!);
    double tien = hd / soluong ;
    print("Số tiền mỗi người phải trả là : $tien");
}
