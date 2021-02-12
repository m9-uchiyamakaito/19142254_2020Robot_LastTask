float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float dif = 0.5;

void setup(){
  size(800, 800, P3D);
  background(255);
  noStroke(); 
    
  camera(250, 150, 75, 0, 0, 0, 0, 0, -1);
  
 
}

void draw(){
  
  background(255);
  
    if(keyPressed){
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
    }
    if(key == 'c'){
      angle3 = angle3 + dif;
    }
    if(key == 'C'){
      angle3 = angle3 - dif;
    }
    if(key == 'e'){
      angle4 = angle4 + dif;
    }
    if(key == 'E'){
      angle4 = angle4 - dif;
    }
}
  
  //base
  translate(0, 0, -50);
  fill(50);
  box(75, 75, 10);

  //1st link
  rotateZ(radians(angle1));
  translate(0,0,10);
  fill(75);
  box(50, 50, 10);
  
  //2nd link's base
  fill(100);
  translate(0, 10, 15);
  box(20, 5, 20);
  translate(0, -20, 0);
  box(20, 5, 20);
  
  //2nd link
  translate(0, 10, 5);
  rotateY(radians(angle2));
  translate(0, 0, 30);
  fill(125);
  box(15, 15, 60);
  
  //3rd link
  translate(0, 0, 30);
  rotateY(radians(angle3));
  translate(0, 0, 30);
  fill(150);
  box(10, 10, 60);
  
  //4th link
  rotateZ(radians(angle4));
  translate(0, 0, 45);
  fill(175);
  box(5, 5, 30);
  
  //4th link's hand
  fill(200);
  translate(0, 4, 15);
  box(3, 3, 10);
  translate(0, -8, 0);
  box(3, 3, 10);
  
}
