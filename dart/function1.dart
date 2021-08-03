void main()
{
var result = callGen(1991);
print(result);


}

String callGen(int year)
{
  print(year);

  var x =(year >= 1996)?"Gen Z":"Gen Y or Upper";
  
 return x;
  
}