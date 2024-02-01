BPM s;
s.tempo(60);
me.dir() + "/Midi.ck" => string midiPath;
me.dir() + "/drum.ck" => string drumPath;
me.dir() + "/piano.ck" => string pianoPath;
me.dir() + "/Piano2.ck" => string piano2Path;
me.dir() + "/bass.ck" => string bassPath;



Machine.add(midiPath) => int midiID;
s.quarterNote*4=> now;
Machine.add(bassPath) => int bassID;
s.quarterNote*16=> now;
Machine.add(drumPath) => int drumID;
s.quarterNote*24=> now;
Machine.replace(bassID,pianoPath) => int pianoID;
s.quarterNote*48=> now;
Machine.add(piano2Path) => int piano2ID;
s.quarterNote=> now;
Machine.remove(pianoID);
s.quarterNote*62=> now;
Machine.remove(drumID);
s.quarterNote*62=> now;
Machine.remove(piano2ID);
s.entire=> now;






