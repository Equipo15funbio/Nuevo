void setup() {
  Serial.begin(9600);
  pinMode(1, INPUT); //Iniciar
  pinMode(2, INPUT); //Primera Medicion
  pinMode(3, OUTPUT); //Valor Adecuado
  pinMode(4, OUTPUT); //Valor Alto
  pinMode(5, OUTPUT); //Valor Bajo
}

void loop() {
  Serial.println("¿Desea Iniciar la medición?");
  int iniciar = digitalRead(1);
  if(iniciar == 1){
    Serial.println("¿Primera medición?");
    int primeraMed = digitalRead(2);
    if(primeraMed == 1){
      //Ajustar dia y hora 
    }
    int Bilirrubina = analogRead(A0);
    Serial.println(Bilirrubina);
    if((Bilirrubina <= 3) && (Bilirrubina >= 0.3)){
      digitalWrite(3, HIGH);
    }
    else{
      if(Bilirrubina > 3){
        digitalWrite(4, HIGH);
      }
      if(Bilirrubina < 0.3){
        digitalWrite(5, HIGH);
      }
    }
  }
}
