public class BPM{
    //global var
    static dur quarterNote, eigthNote, sixteenthNote, thirtysecondNote, entire;
    
    fun void tempo(float beat){
        60.0/(beat) => float SecPerBeat;
        SecPerBeat :: second => quarterNote;
        quarterNote*0.5 => eigthNote;
        eigthNote*0.5 => sixteenthNote;
        sixteenthNote*0.5 => thirtysecondNote;
        5::minute => entire;
        }
    }
   
   