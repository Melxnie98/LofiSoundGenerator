public class Bass{
    SinOsc bass =>JCRev bassR => dac; //STK inst
    BPM b;
    b.tempo(60);
    0.2 => bass.gain;
    0.15 => bassR.mix;
    
    
    fun void freq(float freq){  //this.value = a stetter - a way to pass outside data in
    freq => bass.freq;
    }
    
    fun void playBass(int bassA[]){
        for (0 => int i; i<bassA.cap(); i++){
            if(bassA[i]){
                Math.mtof(bassA[i]) => bass.freq;
         }
           b.eigthNote => now;         
          }
       }
   }
         
Notes c;
Bass b;
while(true){
    b.playBass(c.bassChords);
}

