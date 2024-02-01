Machine.add(me.dir()+"/bpm.ck") => int bpmID;
me.dir() + "/lofiSoundFiles.ck" => string lofiPath;
me.dir() + "/score.ck" => string scorePath;

Machine.add(lofiPath) => int lofiID;
4::second => now;
Machine.add(scorePath) => int scoreID;
4::minute=>now;
Machine.remove(scoreID);
4::second => now;
Machine.remove(lofiID);


