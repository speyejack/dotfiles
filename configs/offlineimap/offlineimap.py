import subprocess
import os
import json
from threading import Timer

def decryptUsernames(path):
	return open(path, "r").read().strip()

# def clearCache():
# 	decryptedCache = ""

# timer = None
# decryptedCache = ""
# def decryptPassword(path):
# 	try:
# 		if timer is not None:
# 			timer = Timer(10.0, clearCache)
# 			args = ["gpg", "--use-agent", "--quiet", "--batch", "-d", path]
# 			decyptedCache = subprocess.check_output(args).strip()
# 			timer.start()
# 		return decryptedCache
# 	except subprocess.CalledProcessError:
# 		return ""

def decryptPassword(path):
	try:
		args = ["gpg", "--use-agent", "--quiet", "--batch", "-d", path]
		decryptedCache = subprocess.check_output(args).strip()
		return decryptedCache
	except subprocess.CalledProcessError:
		return ""
	
def mailuser(acct):
	acct = os.path.basename(acct)
	path = os.path.expanduser("~/.offlineimapusers.json")
	raw_json = decryptUsernames(path)
	try:
		users = json.loads(raw_json)
		return str(users[acct])
	except KeyError or ValueError:
		return ""

def mailpass(acct):
	acct = os.path.basename(acct)
	path = os.path.expanduser("~/.offlineimappass.gpg")
	try:
		raw_json = decryptPassword(path)
		passes = json.loads(raw_json)
		return str(passes[acct])
	except KeyError or ValueError:
		return ""
