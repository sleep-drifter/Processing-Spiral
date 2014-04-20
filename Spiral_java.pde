float theta = 0;
float zoom = 0;
//# of iterations ...do need go over 40
int valuesL = 18;
float addedRadius = 0;
float t = 0.0;


void setup(){

  size(800,600);
  smooth();
  
}

void draw(){
 
 float[] values = new float [valuesL];
 float[] values2 = new float [valuesL];
 theta +=0.01;
 
 translate(width/2,height/2);
 
 if (keyPressed) {
   
    if (keyCode == DOWN) {
      addedRadius+=1.5;
      background(150);
    }
    
    if (keyCode == UP) {
      addedRadius-=1.5;
      background(150);
    }
    if (key == 'S' || key == 's') {
      noStroke();
      background(150);
  
    
    
 }else {
    addedRadius = addedRadius;
    stroke(1);
    fill(1);
 }
 }
 
 if (keyPressed==false) {
   background(150);
   }
  
  if (keyPressed){
    if (key == 'B' || key == 'b'){
   background(map(mouseX,0,width,0,255),0,100);
}
  }
  


 

 
 //BELOW IS AUTO ZOOM CONDITIONAL STATEMENT 
 
// if (zoom > -1 && zoom <10){
//   zoom +=.1;
// }else{
//   zoom = 10.1;
// }
// println(zoom);
  
//intialize arrays for circles

 
 
 //First for loop makes new interations for circles. without this loop, the circles would stack on top of eachother
 for (int i=0; i<values.length; i++){
   //int [] values = new int [];
   values[i] = i;
   float[] totalPlanets = new float [valuesL];
   //Second loops is to draw each circle. Arguments change the size, speed, hue and distance

     for (int _i=0; _i<values.length; _i++){
       values2[_i]=_i;
       //drawPlanet(i*(map(mouseX, 0, width, 0,50)),(_i+1)/(-i-0.5),(map(mouseY, 0, height, 0,255)), _i/2);
       //drawPlanet(i*(zoom),(_i+1)/(-i-0.5),(map(mouseY, 0, height, 0,255)), _i/2);
       drawPlanet(i*(map(mouseX, 0, width, 0,30)),(_i+1)/(-i-0.5),(map(mouseY, 0, height, 0,255)), _i/2 + addedRadius);
      
     }
   }
  

 }
 
void drawPlanet(float distance, float speed, float hue, float radius){
 
 pushMatrix();
 rotate(theta * speed);
 translate(distance,0);
 fill (hue,hue*2,100,80);
//   if (radius > 5 ){
//     translate(0,0,z);
//   }
      

if (keyPressed) {
    if (key == 'F' || key == 'f') {
      float noiseValue = noise(t)*255;
      noFill();
      stroke(noiseValue);
      t+=0.0001;
      println(noiseValue);
    }else{
      fill (hue,hue*2,100,80);
    }
  
  }
 rect  (5,5,radius,radius);
 //triangle(0,0,sqrt(abs(radius)),radius,-radius,-sqrt(abs(radius)));
 popMatrix();
 
 }

