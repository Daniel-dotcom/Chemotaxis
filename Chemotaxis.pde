 Bacteria [] bob;
 
 void setup()   
 {     
  bob = new Bacteria[10];
   for(int i = 0; i < 10; i++){
     bob[i] = new Bacteria();
   }
 	size(300, 300);
  loop();
  background(0);
  }   
 
 void draw()   
 {    
   background(0);
 	 for(int i = 0; i < 10; i++){
   bob[i].move();
   bob[i].show();
   }
 }  
 
 class Bacteria    
 {     
 	int myX, myY, myColor;
  Bacteria(){
    myColor = color(0,(int)(Math.random()*100)+100, (int)(Math.random()*150)+100);
    myX = 150;
    myY = 150;
  }
  
  void move(){
    if(mouseX >  myX){
      myX = myX + (int)(Math.random()*5);
    }else{
      myX = myX -(int)(Math.random()*5);
    }
    if(mouseY >  myY){
      myY = myY + (int)(Math.random()*5);
    }else{
      myY = myY -(int)(Math.random()*5);
    }
  }
  
  void show(){
    fill(myColor);
    ellipse(myX, myY, 10,10);
  }
 }
 
