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


void main(){
  Bottle cb = Bottle("CokeBottle");
  cb.open();
  Bottle cb1 = Bottle("");
  cb1.close();
}