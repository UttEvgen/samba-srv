docker exec -it samba bash
mv /usr/bin/samba{.sh,.sh.old}
exit
docker cp /srv/samba/samba.sh samba:/usr/bin
docker exec -it samba bash
chmod +x /usr/bin/samba.sh
exit
docker commit -m "own srv samba" -a "utt" samba utt/samba
