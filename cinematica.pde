import controlP5.*;
ControlP5 slider1,slider2;
ControlP5 etiquetas;
ManVelocidad Mvelocidad;
ManTiempo Mtiempo;

void setup(){
  size(500,500);
  slider1= new ControlP5(this);
  slider2= new ControlP5(this);
  etiquetas= new ControlP5(this);
  Mvelocidad= new ManVelocidad();
  Mtiempo= new ManTiempo();
  seteo();
}

void draw(){
  background(0);
  reaccion();
}


void seteo(){
  slider1.addSlider(slider1,"")
              .setRange(0,100).setSize(100,20)
              .setPosition(60,10)
              .setValue(0);
   slider2.addSlider(slider2,"")
              .setRange(0,100).setSize(100,20)
              .setPosition(60,40)
              .setValue(0);
  etiquetas.addLabel("Velocidad").setPosition(10,15);
  etiquetas.addLabel("Tiempo").setPosition(10,45);
}


void reaccion(){
  slider1.addListener(Mvelocidad);
  slider2.addListener(Mtiempo);
  
}

class ManVelocidad implements ControlListener{
 public void controlEvent(ControlEvent evento){float v=evento.getController().getValue();println(v);}}
 
class ManTiempo implements ControlListener{
   public void controlEvent(ControlEvent evento){float t=evento.getController().getValue();println(t);
   
   
   }
 }