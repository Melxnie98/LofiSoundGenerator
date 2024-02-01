

BPM l;
l.tempo(60);//tempo specified 

fun void crackle(){
    SndBuf crackle  => dac;
    me.dir()+"audio/crackle_113bpm_G_major.wav" => crackle.read;
    while(true){
         Math.random2(1,5)*0.2 => float myDur; //make the cracks random
         (myDur*0.9):: second => now;
         1.5 =>crackle.gain;
         0 => crackle.pos;
    }
}

fun void vinyl(){
    SndBuf vinyl  => dac;
    me.dir()+"audio/dirt-vinyl-noises-crackles_C_minor.wav" => vinyl.read;
    while(true){
        l.quarterNote => now;
        1.8 =>vinyl.gain;
        0 => vinyl.pos;
    }
}
spork ~ vinyl(); //spork
l.quarterNote => now; //advance time by 1/4 note then spork snare 
spork ~ crackle();
 
 //make functions self contained 
l.entire => now; //do this for entire duration of app



