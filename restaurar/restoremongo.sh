#!/bin/bash

ssh serverone@192.168.0.18 mongodump 2> output.txt
scp -rp serverone@192.168.0.18:/home/serverone/dump /home/serverone/Lab3Instancia/restaurar 
