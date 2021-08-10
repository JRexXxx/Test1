import 'country.dart';
import 'problem.dart';

class City extends Country with Problem{
var city;

City(this.city):super("USA","English");

void callsuper(){
  super.showpeople();
}

@override
void showpeople(){
print("จำนวนคนในรัฐ $city มี 6 แสนคน");
}

}