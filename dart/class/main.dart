import 'country.dart';
import 'city.dart';

void main() {

City item =  City("New York");
print(item.city);
print(item.color);
print(item.name);
 item.callsuper();
 item.showpeople();
 item.showProblem();
} 
 /*
var item = new Country.language("USA","English");

print("ประเทศ : " + item.name);
print("ภาษาหลัก : " + item.showLanguage());

item.setanimal("Bison");
print("สัตว์ประจำชาติ : " + item.getanimal());

print("เมืองหลวง : " + Country.city);
Country.callHello();
*/