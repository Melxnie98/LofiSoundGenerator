public class Drums{
SndBuf kick => dac;
SndBuf snare => dac;
SndBuf hihat => dac;

me.dir() + "audio/kick.wav" => kick.read;
me.dir() + "audio/lo-fi-snare.wav" => snare.read;
me.dir() + "audio/hihat_01.wav" => hihat.read;

kick.samples() => kick.pos;
snare.samples() => snare.pos;
hihat.samples() => hihat.pos;
0.9 => kick.gain;
0.2=>hihat.gain;
0.5=>snare.gain;
Notes n;
BPM d; 
d.tempo(60); //create instance of bpm and set tempo

fun void playDrums(int kickA[], int snareA[], int hihatA[]){
    for (0 => int i; i < kickA.cap(); i++){
        if (kickA[i]){ 
            0 => kick.pos;
            }   
        if (snareA[i]){ 
            0 => snare.pos; 
            }
        if (hihatA[i]){ 
            0 => hihat.pos;
            Math.random2f(.8,1.8) => hihat.rate;
            }
        d.sixteenthNote => now; 
    }
}
fun void playDrums(int kickA[]){ //function overloading
    for (0 => int i; i < kickA.cap(); i++){
        if (kickA[i]){
            0 => kick.pos;
            }
        d.sixteenthNote => now; 
        }
     }  
}

Drums d;
Notes n;

while (true){
    d.playDrums(n.kickPattern1);
    d.playDrums(n.kickPattern1,n.snarePattern1, n.hihatPattern1);
    d.playDrums(n.kickPattern2,n.snarePattern2,n.hihatPattern1);
    d.playDrums(n.kickPattern3,n.snarePattern2, n.hihatPattern1);
}

