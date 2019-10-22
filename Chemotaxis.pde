 Bacteria [] bob;
 
 void setup()   
 {     
  bob = new Bacteria[5];
   for(int i = 0; i < 5; i++){
     bob[i] = new Bacteria();
   }
 	size(300, 300);
  loop();
  background(0);
  }   
 
 void draw()   
 {    
   background(0);
 	 for(int i = 0; i < 5; i++){
   bob[i].move();
   bob[i].show();
   }
 }  
 
 class Bacteria    
 {     
 	int myX, myY, myColor;
  Bacteria(){
    
    myX = 150;
    myY = 150;
  }
  
  void move(){
    myX = myX + (int)((Math.random()*100)-50);
    myY = myY + (int)((Math.random()*100)-50);
  }
  
  void show(){
    ellipse(myX, myY, 10,10);
  }
 }
 
