import processing.serial.*;
import processing.sound.*;


//SoundFile file, file2, file3, file4, file5, file6, file7, file8;
Serial myPort;  // Create object from Serial class
char val;     // Data received from the serial port
int counter=0;
SoundFile [] files = new SoundFile[24];

void setup(){
  String portName = Serial.list()[5]; //change the 0 to a 1 or 2 etc. to match your port
  println(Serial.list());
  myPort = new Serial(this, portName, 9600);
  
  files [0] = new SoundFile (this, "Alone1.aiff");
  files [1] = new SoundFile (this, "Alone2.aiff");
  files [2] = new SoundFile (this, "Alone3.aiff");
  files [3] = new SoundFile (this, "Marvelous1.aiff");
  files [4] = new SoundFile (this, "Marvelous2.aiff");
  files [5] = new SoundFile (this, "Marvelous3.aiff");
  files [6] = new SoundFile (this, "Marvelous4.aiff");
  files [7] = new SoundFile (this, "Marvelous5.aiff");
  files [8] = new SoundFile (this, "Marvelous6.aiff");
  files [9] = new SoundFile (this, "Marvelous7.aiff");
  files [10] = new SoundFile (this, "Melancholy1.aiff");
  files [11] = new SoundFile (this, "Melancholy2.aiff");
  files [12] = new SoundFile (this, "Melancholy3.aiff");
  files [13] = new SoundFile (this, "Melancholy4.aiff");
  files [14] = new SoundFile (this, "Melancholy5.aiff");
  files [15] = new SoundFile (this, "Melancholy6.aiff");
  files [16] = new SoundFile (this, "Melancholy7.aiff");
  files [17] = new SoundFile (this, "Melancholy8.aiff");
  files [18] = new SoundFile (this, "Melancholy9.aiff");
  files [19] = new SoundFile (this, "Melancholy10.aiff");
  files [20] = new SoundFile (this, "Stoic1.aiff");
  files [21] = new SoundFile (this, "Stoic 2.aiff");
  files [22] = new SoundFile (this, "Stoic3.aiff");
  files [23] = new SoundFile (this, "Stoic4.aiff");
}

void draw(){
}

void serialEvent(Serial myPort){

 if ( myPort.available() > 0) {  // If data is available,
   val = myPort.readChar(); // read it and store it in val
   println(val);
   

   if (val == '1'){
     for(int i = 0; i < files.length;i++){
        files[i].stop();
      }
     //println("test");
     counter = counter +1;
     switch(counter){
       case 1:
         files[2].stop();
         files[0].play();
         break;
       case 2:
         files[0].stop();
         files[1].play();
         break;
       case 3:
         files[1].stop();
         files[2].play();
         counter=0;
         break;   
     }
   }
   
   if(val == '3'){
     for(int i = 0; i < files.length;i++){
        files[i].stop();
      }
    //println("test");
    counter = counter +1;
     switch(counter){
       case 1:
         files[9].stop();
         files[3].play();
         break;
       case 2:
         files[3].stop();
         files[4].play();
         break;
       case 3:
         files[4].stop();
         files[5].play();
         break;
       case 4:
         files[5].stop();
         files[6].play();
         break;
       case 5:
         files[6].stop();
         files[7].play();
         break;
       case 6:
         files[7].stop();
         files[8].play();
         break;
       case 7:
         files[8].stop();
         files[9].play();
         counter=0;
         break;
     } 
   }
   
      if(val == '5'){
     for(int i = 0; i < files.length;i++){
        files[i].stop();
      }
    //println("test");
    counter = counter +1;
     switch(counter){
       case 1:
         files[19].stop();
         files[10].play();
         break;
       case 2:
         files[10].stop();
         files[11].play();
         break;
       case 3:
         files[11].stop();
         files[12].play();
         break;
       case 4:
         files[12].stop();
         files[13].play();
         break;
       case 5:
         files[13].stop();
         files[14].play();
         break;
       case 6:
         files[14].stop();
         files[15].play();
         break;
       case 7:
         files[15].stop();
         files[16].play();
       case 8: 
         files[16].stop();
         files[17].play();
         break;
       case 9:
         files[17].stop();
         files[18].play();
       case 10:
         files[18].stop();
         files[19].play();
         counter=0;
         break;
     } 
   }
   
    if (val == '7'){
     for(int i = 0; i < files.length;i++){
        files[i].stop();
      }
     //println("test");
     counter = counter +1;
     switch(counter){
       case 1:
         files[23].stop();
         files[20].play();
         break;
       case 2:
         files[20].stop();
         files[21].play();
         break;
       case 3:
         files[21].stop();
         files[22].play();
         break;
       case 4:
         files[22].stop();
         files[23].play();  
         counter=0;
         break;   
     }
   }
 }
}