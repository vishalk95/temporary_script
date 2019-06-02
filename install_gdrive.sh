#ref: http://olivermarshall.net/how-to-upload-a-file-to-google-drive-from-the-command-line/
#
cd ~/
wget https://docs.google.com/uc?id=0B3X9GlR6EmbnWksyTEtCM0VfaFE&export=download
mv uc*download gdrive
chmod +x gdrive
sudo install gdrive /usr/local/bin/gdrive
echo "Installed gdrive api successfully"
echo " type and hit 'gdrive list' "
