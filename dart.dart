/*import 'dart:io';
import 'dart:convert';
class dartclass{
      void method(){
           print('method two');
      }
      void disp(){
           print('method accessed');
      }
}
void main(){
     print('hello world');
     dartclass obj=new dartclass();
     obj.disp();
     obj.method();
     var k=3%2==0?'even number':'odd number';
     print(k);
     bool o=true;
     print('${o}');
    List array=new List.filled(5,null,growable: false);
     for(var i=0;i<5;i++){
        print("Enter ${i+1} element ");
        array[i]=stdin.readLineSync();
     }
}*/
import 'dart:io';
import 'dart:convert';
void main(){
     print('Enter array size ');
     int?n=int.parse(stdin.readLineSync()!); //checking given input is integer or not 
     List array=new List.filled(n,null,growable: false);//declaring an array
     for(var i=0;i<n;i++){
         print('Enter array ${i+1} value ');
         array[i]=int.parse(stdin.readLineSync()!); //converting users input into integer
     }
     print('array before sorting ');
     for(var i=0;i<n;i++){
        print('${array[i]}');
     }
     //array sorting
     for(var i=0;i<n;i++){
        int k=array[i];
        for(var j=i+1;j<n;j++){
            int temp=array[j];
            if(temp<k){
               int n=temp;
               array[j]=k;
               array[i]=n;
            }
        }
     }
     print('array after sorting ');
     for(var i=0;i<n;i++){
        print('${array[i]}');
     }
}

