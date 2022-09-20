void setup() {
  size(500,500);
 }
 
 void draw() {
  //variables 
  int currentX = mouseX;
  int currentY = mouseY;
  int pastX = pmouseX;
  int pastY = pmouseY;
  int diffX = currentX- pastX;
  int diffY = currentY - pastY;
  
  // Draw a white background
  background(255);
   
  // Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
   
  // Draw Zoog's body
  stroke(0);
  fill((currentX+currentY)/2, 100, 200);
  rect(currentX,currentY,20,100);
   
  // Draw Zoog's head
  stroke(0);
  if(diffX >= 50 || diffY >= 50){
    fill(0,255,0);
  }else{
    fill(255);}
  ellipse(currentX,currentY-30,60,60);
  
  // Draw Zoog's eyes
  fill((currentX+currentY)/2, 100, 200);
  ellipse(pastX-19,pastY-30,16,32);
  ellipse(pastX+19,pastY-30,16,32);
   
  // Draw Zoog's legs
  stroke(0);
  line(pastX-10,pastY+50,currentX-20,pastY+70);
  line(pastX+10,pastY+50,currentX+20,pastY+70);

  //draw Zoog's arms
  line(pastX-50,pastY-10,pastX-10,currentY+20);
   line(pastX+50,pastY-10,pastX+10, currentY+20);
 }
 
 //hide Zoog
 void mouseMoved() {
  background(255);
   
  }
