#!/system/bin/sh
# MAD ROM init
# version 9.0

# Put this on the USB thumdrive in scripts/ folder
# It should be called 01MAD.sh
# This will download MAD_ATV ROM scripts from GitHub for autoconfig

# Because download copy-paste function!
useragent='Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0'
logfile="/data/local/01MAD.sh"
touch "$logfile"
exec >>"$logfile" 2>&1

download(){
# $1 = url
# $2 = local path
# lets see that curl exits successfully
until /system/bin/curl -s -k -L -A "$useragent" -o "$2" "$1" ;do
    sleep 15
done
}

# Have a log functions with dates, just steal it from POGOROM
log() {
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")
  echo "[$timestamp] $@"
}

log "01MAD.sh starting"
# Remount `/` as rw as we need to put some files there.
log "Remounting / as rw"
mount -o rw,remount /

# update_mad.sh aka update_mad_a9.sh
log "Downloading update_mad_a9.sh"
download https://raw.githubusercontent.com/JabLuszko/MAD-ATV_dev/main/update_mad_a9.sh /system/bin/update_mad_a9.sh
log "Downloaded update_mad_a9.sh"
chmod 755 /system/bin/update_mad_a9.sh
log "chmod'ed update_mad_a9.sh"

# 59MAD
log "Downloading 59MAD"
download https://raw.githubusercontent.com/JabLuszko/MAD-ATV_dev/main/59MAD /etc/init.d/59MAD
log "Downloaded 59MAD"
chmod 755 /etc/init.d/59MAD
log "chmod'ed 59MAD"

# Remount `/` as ro back
#log "Remouting / as ro"
#mount -o ro,remount /
log "01MAD.sh exit 0"
exit 0
