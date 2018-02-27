public void setup()
{  size(400,400);

  background (255);
  for (int i = 0; i < 400; i++) {
    noStroke();
    fill(255,255,255);
    rect(0,0+i,400,1);
  }
}
public void draw()
{
  sierpinski(0,398,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <=20) {
    noFill();
    stroke(0);
    strokeWeight(2);
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }

}