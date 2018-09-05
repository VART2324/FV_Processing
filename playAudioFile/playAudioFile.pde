/**
 * This sketch demonstrates how to play a file with Minim using an AudioPlayer. <br />
 * It's also a good example of how to draw the waveform of the audio. Full documentation 
 * for AudioPlayer can be found at http://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 * <p>
 * For more information about Minim and additional features, 
 * visit http://code.compartmental.net/minim/
 */

import ddf.minim.*;

Minim minim;
AudioPlayer audio1;
AudioPlayer audio2;
AudioPlayer audio3;
AudioPlayer bkgMusic;



void setup()
{
  size(854, 480, P3D);

  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  audio1 = minim.loadFile("itsNotTooLate.aiff");
  audio2 = minim.loadFile("giveMeASign.aiff");
  audio3 = minim.loadFile("dontWasteYourTime.aiff");

  //load background audio.
  bkgMusic = minim.loadFile("SmkngTrlPAD03.aiff");
  bkgMusic.loop();
}

void draw()
{
  background(0);
  stroke(255);


  int scale = 100;
  int audio1Buffer = audio1.bufferSize();
  float audio1Left = audio1.left.get(audio1Buffer -1);
  float audio1Right = audio1.right.get(audio1Buffer -1);
  rect(width*0.25, height*0.5, audio1Left*scale, audio1Right*scale);
  
  int audio2Buffer = audio2.bufferSize();
  float audio2Left = audio2.left.get(audio2Buffer -1);
  float audio2Right = audio2.right.get(audio2Buffer -1);
  ellipse(random(width), random(height), audio2Left*scale, audio2Right*scale);
  
  int audio3Buffer = audio3.bufferSize();
  float audio3Left = audio3.left.get(audio3Buffer -1);
  float audio3Right = audio3.right.get(audio3Buffer -1);
  rect(width*0.75, height*0.5, audio3Left*scale, audio3Right*scale);  

  // draw the waveforms
  // the values returned by left.get() and right.get() will be between -1 and 1,
  // so we need to scale them up to see the waveform
  // note that if the file is MONO, left.get() and right.get() will return the same value

  //for(int i = 0; i < audio1Buffer -1; i++)
  //{
  //  float x1 = map( i, 0, audio1Buffer, 0, width );
  //  float x2 = map( i+1, 0, audio1Buffer, 0, width );

  //  point( x1, height*0.25 + audio1.left.get(i)*50);    
  //  point( x1, height*0.75 + audio1.right.get(i)*50);
  //}

  //if (key == '1') {
  //    audio1.rewind();
  //    audio1.play();
  //  }







  // draw a line to show where in the song playback is currently located
  float posx1 = map(audio1.position(), 0, audio1.length(), 0, width);
  stroke(0, 200, 0);
  line(posx1, 0, posx1, height);

  // draw a line to show where in the song playback is currently located
  float posx2 = map(audio2.position(), 0, audio2.length(), 0, width);
  stroke(0, 200, 0);
  line(posx2, 0, posx2, height);

  // draw a line to show where in the song playback is currently located
  float posx3 = map(audio3.position(), 0, audio3.length(), 0, width);
  stroke(0, 200, 0);
  line(posx3, 0, posx3, height);
}

void keyPressed()
{
  if ( key == '1' )
  {
    audio1.rewind();
    audio1.play();
  } else if ( key == '2' )
  {
    audio2.rewind();
    audio2.play();
  } else if ( key == '3' )
  {
    audio3.rewind();
    audio3.play();
  }
}