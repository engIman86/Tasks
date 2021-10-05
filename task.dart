//First task  
void main() {
 List <int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
 a.forEach((i)=>{ if (i>5)   print('the element $i is bigger than 5')});
  


  // Second task 
   
  List <int> c = [5, 10, 15, 20, 25];
  List getFirstandLastNumber (List<int>llist)
  {
    
   List <int> b=[llist.first,llist.last]; 
    return b;        
  } 
   
  print(getFirstandLastNumber(c));
  
   
   }



 //Third  task
  
class Person {
  String name;
  int age ;
  double hieght;
  Person(this.name,this.age,this.hieght);
  printDescription(){
                     print(" Hello, my name is $name. I'm $age years old, And I'm $hieght meters tall.");
                    }
  
}

void main() {
  var p1=  Person("Ahmed",20,170);
  var p2=Person("Ali",30,180);
  p1.printDescription();
  p2.printDescription();
 
  
}


//The fourth task


class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;
}


double totalAndAvarage(List<double> rate){
   var total=0.0;
   double avarage=0.0;
  for(var i in rate){ total= total + i;   }
  
  avarage=total/rate.length;
  print( ' The total of ratings is $total, The avarge of ratings is $avarage');
  
  return (total) ; return( avarage);
   
}

void main(){
  var firstResturant=Restaurant( name:'Filce',cuisine:'Westren Food',ratings:[2.5] );
  firstResturant.ratings.add(5.6);
  firstResturant.ratings.add(2.3);
  
  totalAndAvarage(firstResturant.ratings);

   }



////task five 


abstract class Shape {
  double area();
  double p();
   printValues();
  
   
    
    
  }


class Square extends Shape {
  Square(this.side);
  final double side;
 
 @override
  double area() => side * side;
  double p() => 4 * side ;
   printValues(){
     print('The area of this square is ${area()} and the perimeter is ${p()}');
     
   }
  
 

  
}
class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double area() => 2.17 * radius * radius;
  double p() => 2 * 2.17 * radius; 
  printValues(){
     print('The area of this circle is ${area()} and the perimeter is ${p()}');
   }
}
void main(){
  var s1= Square(5.0);
  var c1= Circle(5.0);
  
  
  List shapes=[s1,c1];
  shapes.forEach((i)=> i.printValues());
  
  
}



