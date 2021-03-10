#!/bin/bash

sshpass timeout 70s ssh santiago@192.168.0.27 VBoxManage clonevm ServerTwo --name ServerThree --register

sshpass timeout 10s ssh santiago@192.168.0.27 VBoxManage startvm ServerThree
