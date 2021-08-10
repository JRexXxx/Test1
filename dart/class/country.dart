class Country{
//property
var name;
var language;
var _animal;
static var city="Washington D.C";
var color = "White";

//Constructor 
Country(this.name,this.language);

// consturctor name
//Country.language(String name,String language):this(name,language);

// method 
 String showLanguage() =>this.language;

//  set
void setanimal(String animal){
this._animal=animal;
}
 
//  get
String getanimal(){
  return this._animal;
}
  
 static void callHello()=> print("Hello"); 

 void showpeople(){
   print("people 200 mill");
 }

}