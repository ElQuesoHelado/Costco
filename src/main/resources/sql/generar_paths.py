file = open("data.sql", "r") 
out = open("out.txt", "w")
line=file.readline()

out.write(line)
while (line := file.readline()):
    # Fin de inserts a producto
    if(line == "\n"):
        break;
    ind = line.rfind(")",0,len(line))
    # if(line[0]=='('):
    nombre = line[line.find("('")+ 2:line.find("', ")]
    out.write( line[0:ind] + ",'"+nombre + "_1.png', "+ "'"+nombre + "_2.png', "+ "'"+nombre + "_3.png'),\n")
    #     out.write("("+sent+", '"+str1+"_1.png\'),\n")
    #     out.write("("+sent+", '"+str1+"_2.png\'),\n")
    #     out.write("("+sent+", '"+str1+"_3.png\'),\n")


file.close()
out.close()

