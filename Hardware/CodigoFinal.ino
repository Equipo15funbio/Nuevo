#include <RTClib.h>
#include <EEPROM.h>
#include <BH1750.h>
#include <Wire.h>



RTC_DS1307 rtc;
BH1750 sensor;

float bilirrubina;
unsigned int intLuzVerde;
unsigned int intLuzAzul;
int D = 42;
int E = 145;
int alpha = 0.345;
int espera = 0;
int num_dato = 0
int num_fecha = 100

void setup() {
  iniciar();
  rtc.adjust(DateTime(__DATE__,__TIME__));
}

void loop() {
  bilirrubina = medicion();
  evaluacion(float bilirrubina);
  mostrar(float bilirrubina);
  guardar_dato(float bilirrubina);
}




void iniciar(){
  Wire.begin();
  sensor.begin(BH1750::CONTINUOUS_HIGH_RES_MODE_2);
  Serial.begin(9600);
  pinMode(1, INPUT);//Guardar dato recibido
  pinMode(3, OUTPUT); //Valor Adecuado
  pinMode(4, OUTPUT); //Valor Alto
  pinMode(5, OUTPUT); //Valor Bajo
  pinMode(6, OUTPUT); //Luz medicion azul
  pinMode(7, OUTPUT); //Luz medicion verde
  digitalWrite(6, LOW);
  digitalWrite(7, LOW);
  
int medicion(){
  digitalWrite(6, HIGH);
  intLuzAzul = sensor.readLightLevel();
  delay(500);
  digitalWrite(6, LOW);
  digitalWrite(7, HIGH);
  intLuzVerde = sensor.readLightLevel();
  delau(500);
  digitalWrite(7, LOW);
  float resultado = D*log10(E*(pow(alpha,intLuzVerde)/intLuzAzul);
  return resultado;

void evaluacion(float bilirrubina){
  if((bilirrubina < 3) && (bilirrubina > 0.3){
    digitalWrite(3, HIGH);
  }
  else{
    if(bilirrubina >= 3){
      digitalWrite(4, HIGH);
    }
    if(bilirrubina <= 0.3){
      digitalWrite(4, HIGH);
    }
  }
}

void mostrar(float bilirrubina){
    Serial.print("La concentracion de bilirrubina en sangre es de: ");
    Serial.print(bilirrubina);
    Serial.println(" mg/dL");
}

void guardar_dato(float bilirrubina){
  Serial.println("¿Desea guardar la medicion realizada?");
  while(digitalRead(1) == 0){
    delay(1)
    if(espera == 10000){
      break;
      }
    espera++;
    }
    if(digitalWrite(1) == 1){
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
      EEPROM.put(num_dato, bilirrubina);
      num_dato = num_dato + 5;
      if(num_dato == 100){
        num_dato = 0;
      }
      if(num_fecha == 700){
        num_fecha = 100;
      }
    }
  }
