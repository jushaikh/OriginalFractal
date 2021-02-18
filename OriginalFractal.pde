int yo = 0; 

public void setup(){
  background(0);
  size(800, 800);
}

public void draw(){
  fractal(400, 400, yo);
  yo += 5;
}

public void fractal(int x , int y, int len){
  if (len <= 4){
    ellipse(x, y, len, len);
  }else{
    fill(0);
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse(x, y, len, len);
    fractal(x, y, len/2);
    fractal(x + 10, y + 10, len/2);
  }
}
