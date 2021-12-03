#include "LowPower.h"
#include <Adafruit_SSD1306.h>
#include <Adafruit_GFX.h>
//#include <RTClib.h>
#include <EEPROM.h>
#include <BH1750.h>
#include <Wire.h>

#define ANCHO 128
#define LARGO 64
#define OLED_RESET 4

//RTC_DS1307 rtc;
BH1750 sensor;
Adafruit_SSD1306 oled(ANCHO, LARGO, &Wire, OLED_RESET);

//DECLARACION DE VARIABLES

float intLuzVerde = 0.0;
float intLuzAzul = 0.0;
int estado = 0;
int num_dato = 0;
float x;
//int num_fecha = 100;


//MODULOS SECUNDARIOS

void IRS(){
  if (digitalRead(2) == 0) {
    estado = 1;
    while (digitalRead(2) == 0);
    for (volatile unsigned int i = 0; i < 20000; i++) {}
  }
}

void iniciar() {
  Wire.begin();
  oled.begin(SSD1306_SWITCHCAPVCC, 0x3C);
  sensor.begin(BH1750::CONTINUOUS_HIGH_RES_MODE_2);
  //sensor.begin();
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);//Guardar dato recibido
  attachInterrupt(digitalPinToInterrupt(2), IRS, FALLING); //definir interrupcion
  pinMode(3, OUTPUT); //Valor Adecuado
  pinMode(8, OUTPUT); //Valor Alto
  pinMode(5, OUTPUT); //Valor Bajo
  pinMode(6, OUTPUT); //Luz medicion azul
  pinMode(7, OUTPUT); //Luz medicion verde
  pinMode(10, INPUT); //Interruptor
  digitalWrite(6, LOW);
  digitalWrite(7, LOW);
}

double medicion() {
  digitalWrite(6, HIGH);
  float intLuzAzul = float(sensor.readLightLevel());
  delay(500);
  digitalWrite(6, LOW);
  digitalWrite(7, HIGH);
  float intLuzVerde = float(sensor.readLightLevel());
  delay(500);
  digitalWrite(7, LOW);
  float resultado = 0.45 * log10(1.24 * (pow(1.025, intLuzVerde) / intLuzAzul));
  return resultado;
}

void evaluacion(float x) {
  if ((x < 3) && (x > 0.3)) {
    digitalWrite(5, HIGH);
    digitalWrite(8, LOW);
    digitalWrite(3, LOW);
  }
  else {
    if (x >= 3) {
      digitalWrite(8, HIGH);
      digitalWrite(3, LOW);
      digitalWrite(5, LOW);
    }
    if (x <= 0.3) {
      digitalWrite(3, HIGH);
      digitalWrite(8, LOW);
      digitalWrite(5, LOW);
    }
  }
}

void mostrar(float x) {
  oled.clearDisplay();
  oled.setTextColor(WHITE);
  oled.setCursor(0, 0);
  oled.setTextSize(1);
  oled.print("La concentracion de bilirrubina en sangre es de:");
  oled.setCursor(5, 30);//oled.setCursor(10, 30);
  oled.setTextSize(2);
  oled.print(x);
  oled.print(" mg/dL");
  oled.display();
  delay(2500);
}

void guardar_dato(float x) {
  oled.clearDisplay();
  oled.setTextColor(WHITE);
  oled.setCursor(0, 25);
  oled.setTextSize(1);
  oled.print("¿Desea guardar la medicion realizada?");
  oled.display();
  delay(2000);
  if (estado == 1) {
    /*
    DateTime fecha = rtc.now();
    EEPROM.put(num_fecha, fecha.day());
    num_fecha = num_fecha + 5;
    EEPROM.put(num_fecha, fecha.month());
    num_fecha = num_fecha + 5;
    EEPROM.put(num_fecha, fecha.year());
    num_fecha = num_fecha + 5;
    EEPROM.put(num_fecha, fecha.hour());
    num_fecha = num_fecha + 5;
    EEPROM.put(num_fecha, fecha.minute());
    num_fecha = num_fecha + 5;
    EEPROM.put(num_fecha, fecha.second());
    num_fecha = num_fecha + 5;
    */
    EEPROM.put(num_dato, 0);
    EEPROM.put(num_dato, x);
    num_dato = num_dato + 5;
    if (num_dato == 100) {
      num_dato = 0;
    }
    /*if (num_fecha == 700) {
      num_fecha = 100;
    }
    }*/
    oled.clearDisplay();
    oled.setTextColor(WHITE);
    oled.setCursor(0, 0);
    oled.setTextSize(2);
    oled.print("Guardado  exitoso!!");
    oled.display();
    delay(3500);
    estado = 0;
}
}

void historial(){  
  while (digitalRead(10) == 1){
    oled.clearDisplay();
    oled.setTextColor(WHITE);
    oled.setCursor(0, 0);
    oled.setTextSize(1);
    oled.println("Mediciones recientes:");
    oled.print(EEPROM.get(0, x));
    oled.print("    ");
    oled.print(EEPROM.get(35, x));
    oled.print("    ");
    oled.println(EEPROM.get(70, x));
    oled.print(EEPROM.get(5, x));
    oled.print("    ");
    oled.print(EEPROM.get(40, x));
    oled.print("    ");
    oled.println(EEPROM.get(75, x));
    oled.print(EEPROM.get(10, x));
    oled.print("    ");
    oled.print(EEPROM.get(45, x));
    oled.print("    ");
    oled.println(EEPROM.get(80, x));
    oled.print(EEPROM.get(15, x));
    oled.print("    ");
    oled.print(EEPROM.get(50, x));
    oled.print("    ");
    oled.println(EEPROM.get(85, x));
    oled.print(EEPROM.get(20, x));
    oled.print("    ");
    oled.print(EEPROM.get(55, x));
    oled.print("    ");
    oled.println(EEPROM.get(90, x));
    oled.print(EEPROM.get(25, x));
    oled.print("    ");
    oled.print(EEPROM.get(60, x));
    oled.print("    ");
    oled.println(EEPROM.get(95, x));
    oled.print(EEPROM.get(30, x));
    oled.print("    ");
    oled.print(EEPROM.get(65, x));
    /*oled.println(EEPROM.get(0, x));
    oled.setCursor(0, 17);
    oled.println(EEPROM.get(5, x));
    oled.setCursor(0, 25);
    oled.println(EEPROM.get(10, x));
    oled.setCursor(0, 33);
    oled.println(EEPROM.get(15, x));
    oled.setCursor(0, 41);
    oled.println(EEPROM.get(20, x));
    oled.setCursor(0, 49);
    oled.println(EEPROM.get(25, x));
    oled.setCursor(0, 57);
    oled.println(EEPROM.get(30, x));
    oled.setCursor(50, 9);
    oled.print(EEPROM.get(35, x));
    oled.setCursor(50, 17);
    oled.print(EEPROM.get(40, x));
    oled.setCursor(50, 25);
    oled.print(EEPROM.get(45, x));
    oled.setCursor(50, 33);
    oled.print(EEPROM.get(50, x));
    oled.setCursor(50, 41);
    oled.print(EEPROM.get(55, x));
    oled.setCursor(50, 49);
    oled.print(EEPROM.get(60, x));
    oled.setCursor(50, 57);
    oled.print(EEPROM.get(65, x));
    oled.setCursor(100, 9);
    oled.print(EEPROM.get(70, x));
    oled.setCursor(100, 17);
    oled.print(EEPROM.get(75, x));
    oled.setCursor(100, 25);
    oled.print(EEPROM.get(80, x));
    oled.setCursor(100, 33);
    oled.print(EEPROM.get(85, x));
    oled.setCursor(100, 41);
    oled.print(EEPROM.get(90, x));
    oled.setCursor(100, 49);
    oled.print(EEPROM.get(95, x));*/
    oled.display();
  }
}


//SETUP Y VOID

void setup() {
  iniciar();
  //rtc.adjust(DateTime(_DATE, __TIME_));
}

void loop() {
  float bilirrubina = medicion();
  evaluacion((float)bilirrubina);
  mostrar((float)bilirrubina);
  guardar_dato((float)bilirrubina);
  historial();
}
