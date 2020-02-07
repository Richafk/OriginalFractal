public void setup()
{
  size(1200,1200);
}
public void mouseDragged()
{
  background(color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));
}
public void yeet(int apple, int peach, int mango) 
{
  if(mango<=40){
    rect(0,0,15,15);
  }else{
    yeet(apple+mango/2,peach+mango/2,mango/2);
    yeet(apple+mango/2,peach-mango/2,mango/2);
    rect(apple,peach,mango,mango);
    rect(apple*2,peach*2,mango*2,mango*2);
    yeet(apple-mango/2,peach-mango/2,mango/2);
    yeet(apple-mango/2,peach+mango/2,mango/2);
  }
}
public void draw()
{
  translate(450,450);
  noFill();
  stroke(color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));
  rectMode(CENTER);
  yeet(0,0,200);
}
