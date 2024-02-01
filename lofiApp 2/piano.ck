public class Piano{
    Rhodey piano[4]  => dac;
    //reverb rexz
    float t;
    piano[0] => dac.left;
    piano[1] => ResonZ filt => dac;
    piano[2] => JCRev r =>dac;
    piano[3] => dac.right;    
    BPM p; // import tempo from BPM
    p.tempo(60); // set tempo
    
    fun void freq(float freq, float t){  //this.value = a stetter - a way to pass outside data in
         5000 + Std.fabs(Math.sin(t)) * 2000 => filt.freq;
          Math.random2f(0.2,0.3) => r.mix;//Reverb
          .30 +=> t;
    }
    
    fun void setQ(float Q){
        Q => filt.Q;
        15.0 => filt.Q => filt.gain;
    }
    
    fun void setGain(float gain){
        filt.Q()* gain => piano[0].gain;
        filt.Q()* gain => piano[1].gain;
        filt.Q()* gain => piano[2].gain;
        filt.Q()* gain => piano[3].gain;  
    }
    
    fun void playPiano(int chordsA[][]){
        while(true){
            for(0 => int i; i<4; i++){
                Std.mtof(chordsA[0][i]) => piano[i].freq; //midi to frequency conversion
                Math.random2f(0.2,.5) => piano[i].noteOn;//random # generation
                //a.playBass(int bassA[]);//make the bass play in sync

            }
            p.quarterNote*1.5 => now;   
            
            for(0 => int i; i<4; i++){
                Math.mtof(chordsA[1][i]) => piano[i].freq;
                Math.random2f(0.4,.7) => piano[i].noteOn;
                //a.playBass(int bassA[]);
            }
            p.eigthNote*1.5 => now; 
            
            for(0 => int i; i<4; i++){
                Math.mtof(chordsA[2][i]) => piano[i].freq;
                Math.random2f(0.3,.6) => piano[i].noteOn;
                //a.playBass(int bassA[]);
            }
            p.quarterNote*1.5 => now;
            
            for(0 => int i; i<4; i++){
                Math.mtof(chordsA[3][i]) => piano[i].freq;
                Math.random2f(0.4,.7) => piano[i].noteOn;
                //a.playBass(int bassA[]);
            }
            p.eigthNote*1.5 => now;
            
            for(0 => int i; i<4; i++){
                Math.mtof(chordsA[4][i]) => piano[i].freq;
                Math.random2f(0.4,.6) => piano[i].noteOn;
                //a.playBass(int bassA[]);
            }
            p.quarterNote*1.5 => now; 
            
            for(0 => int i; i<4; i++){
                Math.mtof(chordsA[5][i]) => piano[i].freq;
                Math.random2f(0.4,.6) => piano[i].noteOn;
                //a.playBass(int bassA[]);
            }
            p.eigthNote*1.5 => now;
            
            for(0 => int i; i<4; i++){
                Math.mtof(chordsA[6][i]) => piano[i].freq;
                Math.random2f(0.4,.6) => piano[i].noteOn;
                //a.playBass(int bassA[]);
            }
            p.quarterNote*1.5 => now;
        }  
    }
    
}


Piano a; //make new piano 
Notes n;//import notes

while(true){
    a.playPiano(n.pianoChords);  
    a.playPiano(n.pianoChords1);  
    a.playPiano(n.pianoChords2); 
}


