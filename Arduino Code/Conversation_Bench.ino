// set pin numbers:
const int buttonPin = 2;     // the number of the pushbutton pin
const int buttonPin2 = 4;
const int buttonPin3 = 7;
const int buttonPin4 = 12;
const int ledPin =  13;      // the number of the LED pin

// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status
int buttonState2 = 0;
int buttonState3 = 0;
int buttonState4 = 0;


void setup() {
  //initialize serial communications at a 9600 baud rate
  Serial.begin(9600);
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);
  pinMode(buttonPin2, INPUT);
  pinMode(buttonPin3, INPUT);
  pinMode(buttonPin4, INPUT);
}

void loop(){
    // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);
 // Serial.println(buttonState); 

  // check if the pushbutton is pressed.
  // if it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    Serial.println("1"); //When processing receives Serial Print, 1 = button pressed
    delay (100);
    
  } else {
    // turn LED off:
   digitalWrite(ledPin, LOW);
   Serial.println("0"); //When processing receives Serial Print, 0 = button NOT pressed
    delay (100);
  }
  
  ////////////////////////////////Second Button/////////////////////////////////////////////
    buttonState2 = digitalRead (buttonPin2);
  
    if (buttonState2 == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    Serial.println("3"); 
    delay (100);
    
  } else {
    // turn LED off:
   digitalWrite(ledPin, LOW);
   Serial.println("2"); 
    delay (100);
  }
    ////////////////////////////////Third Button/////////////////////////////////////////////
    
    buttonState3 = digitalRead (buttonPin3);
  
    if (buttonState3 == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    Serial.println("5"); 
    delay (100);
    
  } else {
    // turn LED off:
   digitalWrite(ledPin, LOW);
   Serial.println("4"); 
    delay (100);
  }
  
  
    ////////////////////////////////Fourth Button/////////////////////////////////////////////
   
    buttonState4 = digitalRead (buttonPin4);
  
    if (buttonState4 == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    Serial.println("7"); 
    delay (100);
    
  } else {
    // turn LED off:
   digitalWrite(ledPin, LOW);
   Serial.println("6"); 
    delay (100);
  }
  
  
  
  //send 'Hello, world!' over the serial port
 // Serial.println("Hello, world!");
  //wait 100 milliseconds so we don't drive ourselves crazy
 // delay(100);
}



