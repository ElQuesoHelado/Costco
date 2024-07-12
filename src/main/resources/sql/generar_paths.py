# Script que genera los inserts a la tabla imagen, basandose en los inserts de la tabla producto
file = open("data.sql", "r") 
out = open("out.txt", "w")
file.readline()

out.write("INSERT INTO \"imagen\" (\"codigo_producto\", \"path\") VALUES\n")
while (line := file.readline()):
    # Fin de inserts a producto
    if(line == "\n"):
        break;
    if(line[0]=='('):
        str1 = line[line.find("('")+ 2:line.find("', ")]
        sent = "(SELECT \"codigo\" FROM \"producto\" WHERE \"nombre\" = '" + str1 + "')"
        out.write("("+sent+", '"+str1+"_1.png\'),\n")
        out.write("("+sent+", '"+str1+"_2.png\'),\n")
        out.write("("+sent+", '"+str1+"_3.png\'),\n")


file.close()
out.close()

