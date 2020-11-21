#!/bin/bash 

# https://olivermarshall.net/how-to-upload-a-file-to-google-drive-from-the-command-line/

# Use Google Drive to upload the compressed file system 

wget https://docs.google.com/uc?id=0B3X9GlR6EmbnWksyTEtCM0VfaFE&export=download

mv uc\?id\=0B3X9GlR6EmbnWksyTEtCM0VfaFE gdrive

chmod +x gdrive
	
sudo install gdrive /usr/local/bin/gdrive

gdrive list

printf "gdrive\n" >> $DIR/installed.txt