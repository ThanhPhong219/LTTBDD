import 'dart:io';
void cau1(){
  File file = File('hello.txt');
  file.writeAsStringSync('Nguyễn Thanh Phong');
}
void cau2(){
  File file = File('hello.txt');
  file.writeAsStringSync('\nNam Dương',mode:FileMode.append);
}
void cau3(){
  File file = File('hello.txt');
  print("Link truy cập ${file.path} là : ${file.absolute.path}");
}
void cau4(){
  File file = File('hello.txt');
  file.copySync('hello_copy.txt');
}
void cau5(){
  for(int i =0;i<100;i++)
    new File('$i.txt').create(recursive: true);
}
void cau6(){
  File cau6 = File('hello_copy.txt');
  cau6.deleteSync();
}
void cau7(){
  print("Nhập số lượng sinh viên: ");
  File cau7 = File('student.csv');
  cau7.writeAsStringSync('Name,Age,Address\n');
  int? n = int.tryParse(stdin.readLineSync()!);
  if(n!=null){
    for(int i=0;i<n;i++){
      stdout.write("Nhập tên sinh viên ${i+1}: ");
      String? name = stdin.readLineSync();
      stdout.write("Nhập tuổi sinh viên ${i+1}: ");
      String? age = stdin.readLineSync();
      stdout.write("Nhập địa chỉ sinh viên ${i+1}: ");
      String? add = stdin.readLineSync();
      cau7.writeAsStringSync('$name,$age,$add\n',mode: FileMode.append);
    }
  }
  String contents = cau7.readAsStringSync();
      List<String> ngat = contents.split('\n');
      for(var n in ngat){
        print(n);
      }
}
void main(){}
