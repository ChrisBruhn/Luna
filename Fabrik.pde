/* //<>// //<>//
//Opgave 1
 
 
 boolean bit;
 
 void setup(){
 size(800, 800);
 }
 
 void draw(){
 background(205);
 bitmine();
 fill(0);
 textSize(100);
 
 if(bit==true){
 text(0, 400, 400);
 }else{
 text(1, 400, 400);
 }
 
 
 }
 
 boolean bitmine(){
 float bitgenerator = random(0, 2);//random(0, 2);
 if(bitgenerator>1){
 return true;
 }else {
 return false;
 }
 }
 */



//Opgave 2

/*
void setup(){
 size(800, 800);
 }
 
 void draw(){
 background(205);
 bitmine();
 makeByte();
 
 byte result = makeByte();                            //Converts the function makeByte() into a byte so it can be displayes in a text()
 
 fill(0);
 textSize(100);
 textAlign(CENTER, CENTER);
 text("Byte: " + result, width / 2, height / 2);      //Displays the bytes on the screen
 
 
 }
 
 boolean bitmine(){                                    //A function that makes bits (0's and 1's)
 float bitgenerator = random(0, 2);                   //Generates randomly 0's and 1's ->bits
 if(bitgenerator>1){                                 //Makes 0=true and 1=false
 return true;
 }else {
 return false;
 }
 }
 
 
 byte makeByte(){
 
 int[]Sum = new int [8];                             //Declares a new array called Sum with 9 spaces
 int sum=0;                                           //Initializes the array
 
 for(int i=0; i<8; i++){                             //A loop that runs through all the spaces in the array
 if(bitmine()){                                    //If-command that runs only if bitmine() returns a 0 (is true)
 Sum[i]=(int) pow(2, i);                           //A byte has 8 bits 2^0 2^1 etc this follows that logic and calculates the 8 random bits
 } else{
 Sum[i]=0;                                         //This makes a bit in the byte equal zero whenever the bitmine generates a 1
 }
 }
 
 for(int i=0; i<8; i++){
 sum +=Sum[i];                                       // This sums all the 8 bits we made in the previous for-loop and makes it to a byte
 }
 
 return (byte) sum;                                    // Because this function is of the type byte it has to return a byte value so we convert the array to bytes
 
 }
 */


//Opgave 3

/*
     byte abyte;                                      //Declares the variable golbally so it can be used in the makeChar function
 
 
 void setup(){
 size(800, 800);
 abyte = makeByte();
 }
 
 void draw(){
 background(205);
 bitmine();
 makeByte();
 makeChar();
 
 abyte = makeByte();                             //Makes it so abyte's value updates all the time
 char achar = makeChar();                         //Makes a variable that can be printed in the text() function
 
 
 fill(0);
 textSize(100);
 createFont("Georgia", 32);
 textAlign(CENTER, CENTER);
 text("Char: " + achar, width / 2, height / 2);      //Displays the char on the screen
 
 
 }
 
 boolean bitmine(){                                    //A function that makes bits (0's and 1's)
 float bitgenerator = random(0, 2);                   //Generates randomly 0's and 1's ->bits
 if(bitgenerator>1){                                 //Makes 0=true and 1=false
 return true;
 }else {
 return false;
 }
 }
 
 
 byte makeByte(){
 
 int[]Sum = new int [8];                             //Declares a new array called Sum with 9 spaces
 int sum=0;                                           //Initializes the array
 
 for(int i=0; i<8; i++){                             //A loop that runs through all the spaces in the array
 if(bitmine()){                                    //if-command that runs only if bitmine() returns a 0 (is true)
 Sum[i]=(int) pow(2, i);                           //A byte has 8 bits 2^0 2^1 etc this follows that logic and calculates the 8 random bits
 } else{
 Sum[i]=0;                                         //This makes a bit in the byte equal zero whenever the bitmine generates a 1
 }
 }
 
 for(int i=0; i<8; i++){
 sum +=Sum[i];                                       // This sums all the 8 bits we made in the previous for-loop and makes it to a byte
 }
 
 return (byte) sum;                                    // Because this function is of the type byte it has to return a byte value so we convert the array to bytes
 
 }
 
 char makeChar(){
 
 while(true){                                        //Infinite loop
 if(32 <= abyte && abyte <= 126){                    //Makes it so it will only print a char if the byte is within the printable range
 return char(abyte);
 } else{
 abyte=makeByte();                                     //If the byte is not within the limits it finds a new byte and tries again
 }
 }
 
 }
 */

//Opgave 4


// Undlad at bruge globale variaber! 
// byte abyte;                                      //Declares the variable golbally so it can be used in the makeChar function
String astring;

void setup() {
  
  size(800, 800);
  // Derfor var bogstavet altid det sammen!! Her initierer du abyte. Så din abyte skifter aldrig værid. . ;) 
  //abyte = makeByte();
  frameRate(1);
  
  // alle de kommandoer som kun skal eksekveres én gang kan med fordel være i setup
  fill(0);
  textSize(100);
  createFont("Georgia", 32);
  textAlign(CENTER, CENTER);
  
}

void draw() {
  background(205);
  //bitmine();
  //makeByte();
  //makeChar();
  //abyte = makeByte();                             //Makes it so abyte's value updates all the time
  
  astring = makeString(5);                         //Makes a variable that can be printed in the text() function
  text("String: " + astring, width / 2, height / 2);      //Displays the char on the screen
}

boolean bitmine() {                                    //A function that makes bits (0's and 1's)
  float bitgenerator = random(0, 2);                   //Generates randomly 0's and 1's ->bits
  if (bitgenerator>1) {                                 //Makes 0=true and 1=false
    return true;
  } else {
    return false;
  }
}


byte makeByte() {

  int[]Sum = new int [8];                             //Declares a new array called Sum with 9 spaces
  int sum=0;                                           //Declares the variable sum

  for (int i=0; i<7; i++) {                             //A loop that runs through all the spaces in the array
    if (bitmine()) {                                    //if-command that runs only if bitmine() returns a 0 (is true)
      Sum[i]=(int) pow(2, i);                           //A byte has 8 bits 2^0 2^1 etc this follows that logic and calculates the 8 random bits (initilazation of the array)
    } else {
      Sum[i]=0;                                         //This makes a bit in the byte equal zero whenever the bitmine generates a 1
    }
  }

  for (int i=0; i<8; i++) {
    sum +=Sum[i];                                       // This sums all the 8 bits we made in the previous for-loop and makes it to a byte
  }

  return (byte) sum;                                    // Because this function is of the type byte it has to return a byte value so we convert the array to bytes
}

char makeChar() {
  // jeg har tilføjet abyte som en lokal variabel
  byte abyte=makeByte();  
  while (true) {                                        //Infinite loop
    if (65 <= abyte && abyte <= 90) {                    //Makes it so it will only print a char if the byte is within the printable range
      return char(abyte);
    } else {
      abyte=makeByte();                                     //If the byte is not within the limits it finds a new byte and tries again
    }
  }
}

String makeString(int pladser) {
  String astring="";
  for (int i=0; i<pladser; i++) {
    char newchar=makeChar();
    println(newchar);
    if (i==0) {
      newchar=Character.toUpperCase(newchar);
    }
    astring+=newchar;
  }
  return astring;
}
