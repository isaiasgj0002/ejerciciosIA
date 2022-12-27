from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
from array import *
import logging
logging.basicConfig(filename='archivarlo.log',level=logging.DEBUG)
chat = ChatBot('Asistente')
trainer = ListTrainer(chat)
chat.storage.drop()
data = open('conv.txt','r',encoding='utf-8').readlines()
trainer.train(data)
while True:
    mensaje = input('Escriba un mensaje: ')
    if mensaje == "deseo hacer una compra":
        try:
            a = []
            n = int(input("Asistente: Ingrese la cantidad de productos: "))
            for i in range(n):
                x = input("Asistente: Ingresa el nombre del producto: ")
                a.append(x)
            print("Asistente: Los productos seleccionados son:")
            print(a)
            confirmacion = input('Asistente: desea confirmar su compra?(si, no): ')
            if confirmacion == "si":
                print("Asistente: se registro su compra, el repartidor llegara pronto a su domicilio para entregarle sus productos e indicarle el total a pagar")
            else:
                print("Asistente: se ha cancelado su compra")
        except ValueError:
            print('Asistente: Escriba solo numeros')
    else:
        respuesta = chat.get_response(mensaje)
        print("Asistente: "+str(respuesta))
        if respuesta == "adios, fue un gusto, lo esperamos pronto en nuestra tienda, gracias por escojer el tornillo feliz! :)":
            break
