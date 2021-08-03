void main()
{
callweb("Google",port:"443",protocal:"https");

}


void callweb(String web,{String protocal ="http",String port = "80"}) => print("$web $protocal $port");

  
