#pip install SpeechRecognition
#pip install PyAudio
import speech_recognition as sr
r = sr.Recognizer()
with sr.Microphone() as source:
  print("Diga 1 o 2")
  audio = r.listen(source)
  try:
    text = r.recognize_google(audio)
    if "uno" in text:
      print("UNO(1)")
    elif "dos" in text:
      print("DOS(2)")
    else:
      print("No dijiste ni uno ni dos")
  except:
    print("No te entiendo")
