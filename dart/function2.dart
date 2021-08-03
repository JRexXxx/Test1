void main()
{

var result = callcolor("yellow");
print(result);

}


 
 int callcolor([String newcolor = "black"]) {
   List<String> colors =["red","blue","green"];
   colors.add(newcolor);

   for(var i in colors){
     print(i);
   }
   return colors.length;

 }
  
