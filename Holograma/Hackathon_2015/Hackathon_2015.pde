import processing.video.*;
import javax.swing.JOptionPane;

Movie movie;
  
 void setup()  {
   
   String video= JOptionPane.showInputDialog (null, "Qual o nome do video? ");
  size(1300, 700);
  movie = new Movie(this, video);
  movie.loop();
}

void movieEvent(Movie m) {
  m.read();
}
 void draw() {
   
   
  String estado[] = loadStrings("http://fallingup.hol.es/Hackathon2.0/holograma.txt"); 
 
  if (estado[0].equals("HOLOGRAMA=1") == true) {
       background(0);
       
       image(movie, 540, 20, 220, 220);
       translate(320,460);
       rotate(-PI/2.0);
       
       image(movie, 0, 0, 220, 220);
       translate(-220, 440);
       rotate(-PI/2.0);
       
       image(movie, 0, 0, 220, 220);
       translate(-220, 440);
       rotate(-PI/2.0);
       image(movie, 0, 0, 220, 220);
 
  } else {
       background(0);
 }
 
  //delay(10000);
 }