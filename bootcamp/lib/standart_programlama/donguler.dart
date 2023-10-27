void main(){
// 1,2,3

for(var i=1;i<4;i++){
  print("Döngü 1: $i");
}

// 10 ile 20 arasında 5er artış
for(var x=10;x<21;x+=5){
  print("Döngü 2: $x");
}
// 20 ile 10 arasında 5er azalsın
for(var x=20;x>9;x-=5){
  print("Döngü 3: $x");
}

// while

var sayac = 1;
while(sayac <4){

  print("Döngü 4: $sayac");
  sayac ++;

}

// 1,2,3,4,5
for(var i=1;i<6;i++){
  if(i == 3){
    break;
  }
  print("Döngü 5: $i");

}
  for(var i=1;i<6;i++){
    if(i == 3){
      continue; // döngüde 3 ü atlar. printi görmez !!!
    }
    print("Döngü 5: $i");

  }
}