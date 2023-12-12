#!/bin/bash
done < bdlibros.txt
if [ -f $1 ]
then
cat $1
else 
echo " El fichero $1 no existe "
fi