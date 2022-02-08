/*
 
*/
//Debug printing:

#define DEBUG 1

#if DEBUG == 1
#define debug(x) Serial.print(x)
#define debugln(x) Serial.println(x)
#else
#define debug(x)
#define debugln(x)
#endif

// include the library code:
#include <LiquidCrystal.h>

// Defines dependent on wiring
#define RS 23
#define EN 22
#define D4 18
#define D5 5
#define D6 17
#define D7 16
// Defines depending on LCD display used
#define COL 16
#define LIN 2


LiquidCrystal lcd(RS, EN, D4, D5, D6, D7);


// Defines for the Wifi Get request:
#include <WiFi.h>
#include <WiFiMulti.h>
#include <HTTPClient.h>

WiFiMulti wifiMulti;

void setup() {
  if (DEBUG == 1){
    Serial.begin(115200);
  }
  // set up the LCD's number of columns and rows:
  lcd.begin(COL,LIN);
  // Print a message to the LCD.

  wifiMulti.addAP("__WIFI_SSID", "__WIFI_PWD");
  
  LCDprint("ESP32 Iniciada. Conectando wifi");
}

void loop() {
  // wait for WiFi connection
  if((wifiMulti.run() == WL_CONNECTED)) {

    HTTPClient http;

    debug("[HTTP] begin...\n");
    // configure traged server and url
    http.begin("http://_WEB_SERVER_IP/message/1"); //HTTP

    debug("[HTTP] GET...\n");
    // start connection and send HTTP header
    int httpCode = http.GET();

    // httpCode will be negative on error
    if(httpCode > 0) {
      // HTTP header has been send and Server response header has been handled
      debug("[HTTP] GET... code:");
      debugln(httpCode);
      // file found at server
      if(httpCode == HTTP_CODE_OK) {
        String payload = http.getString();
        debugln(payload);
        LCDprint(payload);
      }
    } else {
      debugln("[HTTP] GET... failed, error: ");
      debugln(http.errorToString(httpCode).c_str());
    }

    http.end();
  }
  delay(2500);//pull request every 2.5 s
}

//TODO: Make available to print more than 32 char, by showing first 32 char and then other 32.
//TODO: Make condition so words are not cutted if it exceeds 16 char.

void LCDprint(String input){
  //Reset the lcd from past message:
  lcd.clear();
  byte thisCol = 0;
  byte thisRow = 0;
  bool changedLine=false;
  
  char letter;
  byte cursorPos=0;
  char wordToPrint[16];
  byte nletterWord = 0;
  
  byte len = input.length();
  
  if(len>32){
      len = 32;
      debugln("Text too long, only showing first 32 characters: ");
      debugln(input);
  }

  
  for(byte i = 0; i < len; i++){
    letter = input.charAt(i);
    wordToPrint[nletterWord]=letter;
    nletterWord ++;
    if(letter == ' ' or i==len-1){
      if(nletterWord+cursorPos < COL+1){
        cursorPos+=nletterWord;
        //And will print later
      }else if(nletterWord<COL and not changedLine){
        thisCol = 0; //Put cursor on first postion
        thisRow = 1; //second row
        lcd.setCursor(thisCol, thisRow);
        changedLine = true;
        //And will print later
        cursorPos=nletterWord; //Next line will have nletterWord letters
      }else{
        nletterWord = COL-cursorPos;
        debug(nletterWord);
      }
      //debug(cursorPos);
      for(byte j=0;j<nletterWord;j++){
        lcd.write(wordToPrint[j]);
        debug(wordToPrint[j]);
      }
      nletterWord=0;
    }
    
  }
  for(byte j=0;j<nletterWord;j++){
    lcd.write(wordToPrint[j]);
    debug(wordToPrint[j]);
  }

  
}
