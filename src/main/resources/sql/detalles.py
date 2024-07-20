import random

out = open("out.txt", "w")


random.seed()


numero_orden = 26
while(numero_orden<=101):
    for i in range(5):
        linea = "("+ str(random.randrange(1,121))+", "+ str(numero_orden)+", " + str(random.randrange(1,6))+"),\n"
        out.write(linea)
    numero_orden+=1
