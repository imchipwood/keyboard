//Pin setup
int ledPin = PIN_D6;
bool ledStatus = HIGH;

//C0->C3, R0->R4
int columnPins[] = { PIN_B0, PIN_B1, PIN_B2, PIN_B3 };
int rowPins[] = { PIN_D1, PIN_D2, PIN_D3, PIN_C6, PIN_C7 };
int columnCount = sizeof(columnPins)/sizeof(int);
int rowCount = sizeof(rowPins)/sizeof(int);

//How quickly to poll each key, in ms
int pollDelay = 1000/30;
int columnPollTime = 10; //I don't know what a good number is

//What are the keys in the numpad
//Left to right, top to bottom    C0->C3, R0->R4
int columns[][5] = { 
                    { KEY_NUM_LOCK, KEYPAD_7, KEYPAD_4, KEYPAD_1, KEYPAD_0 },
                    { KEYPAD_SLASH, KEYPAD_8, KEYPAD_5, KEYPAD_2, 0},
                    { KEYPAD_ASTERIX, KEYPAD_9, KEYPAD_6, KEYPAD_3, KEYPAD_PERIOD },
                    { KEYPAD_MINUS, 0, KEYPAD_PLUS, 0, KEYPAD_ENTER }
                   };

void setup() {

  //Initialize I/O
  for(int columnIndex = 0; columnIndex < columnCount; ++columnIndex){
    //Set the pin and turn it off
    int columnPin = columnPins[columnIndex];
    pinMode(columnPin, INPUT_PULLUP);
  }
  for(int rowIndex = 0; rowIndex < rowCount; ++rowIndex){
    //Set the pin
    int rowPin = rowPins[rowIndex];
    pinMode(rowPin, OUTPUT);
    digitalWrite(rowPin, HIGH);
  }
  
  //Initialize the keyboard
  Keyboard.begin();
  Serial.begin(9600);
}


void loop() {

  //Poll all the rows
  pollRows();
  
  //We've pressed all the keys, or as many as we can
  //Send the message
  Keyboard.send_now();

  //Toggle the LED
  digitalWrite(ledPin, ledStatus);
  ledStatus = !ledStatus;

  //Wait for the next poll
  delay(pollDelay);

  //Pause for debug
  //delay(5000);
}

void pollRows(){
  //For each row
  for(int rowIndex = 0; rowIndex < rowCount; ++rowIndex){
    //Drive the row low
    int rowPin = rowPins[rowIndex];
    digitalWrite(rowPin, LOW);

    //Wait for things to settle(?)
    //delay(columnPollTime);

    //Now read each row
    pollColumns(rowIndex);

    //Turn off the pin!
    digitalWrite(rowPin, HIGH);
  }
}

void pollColumns(int rowIndex){
  //Read all the columns and get the keys that are pressed
  for(int columnIndex = 0; columnIndex < columnCount; ++columnIndex){
    //Is it high?
    int columnPin = columnPins[columnIndex];
    bool activated = !digitalRead(columnPin);
    int key = columns[columnIndex][rowIndex];
    if(key != 0){
      if(activated){
        //We need to get that character for the numpad
        //Serial.println(key);
        Keyboard.press(key);
      }else{
        //Don't press that key
        Keyboard.release(key);
      }
    }
  }
}

