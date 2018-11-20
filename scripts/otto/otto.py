#!/usr/bin/python

# import subprocess
# import argparse
import os
import shutil
# import smtplib
# import requests
# import socket
# import fnmatch
# import netifaces
# from time import sleep
# from email.MIMEMultipart import MIMEMultipart
# from email.MIMEText import MIMEText
# from bs4 import BeautifulSoup

def menu():
	print("hello")
	projectName = input("Project Name: ")
	createProject(projectName)


def createProject(projectName):

	projectName = "." + "projectName"

	if os.path.isdir(projectName):
		print("Project already exists")
		boolOverwrite = input("Overwrite the project? (Y/N): ")
		if (boolOverwrite == "Y") or (boolOverwrite == "y"):
			os.shutil.rmtree(projectName)
		else:
			menu()
	else:
		os.makedirs(projectName)
		

menu()