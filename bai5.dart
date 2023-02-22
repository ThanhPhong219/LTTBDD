import 'dart:io';
void main(){
  /*File file = File('hello.txt');
  //Cau1
  file.writeAsStringSync('Nguyễn Thanh Phong');
  //Cau2
  file.writeAsStringSync('\nNam Dương',mode:FileMode.append);
  //Cau3
  print("Link truy cập ${file.path} là : ${file.absolute.path}");
  //Cau4
  file.copySync('hello_copy.txt');
  /*Cau 5
  for(int i =0;i<100;i++)
    new File('$i.txt').create(recursive: true);*/
  //Cau6
  //File cau6 = File('hello_copy.txt');
  //cau6.deleteSync();
  */
  //Cau 7
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