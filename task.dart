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

//task four using old way

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


void main(){
  var r=Restaurant( name:'toto',cuisine:'coco',ratings:[2.5] );
  //print('printing ${r.cuisine},${r.name},${r.ratings}');
  r.ratings.add(5.6);
  r.ratings.add(2.3);
  var total=0.0;
  for(var i in r.ratings){ total= total + i;   }
  print('The total of ratings is $total'); 
  var avarage=0.0;
 avarage=total / r.ratings.length;
  
  print('The avarge of ratings is $avarage');
   
 
  
}
