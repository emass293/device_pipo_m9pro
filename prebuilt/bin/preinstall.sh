#!/system/bin/sh
# preinstall
if [ ! -e /data/.notfirstboot ]
then

   if [ -e /system/preinstall/recovery.img ]
    then

        flash_image recovery /system/preinstall/recovery.img
        mount -o rw,remount /dev/block/mtdblock8 /system
        mv /system/preinstall/recovery.img /system/preinstall/recovery.done

        mount -o ro,remount /dev/block/mtdblock8 /system
    fi

    if [ -e /mnt/external_sd/org.xbmc.xbmc/ ]
    then
        APKLIST=`ls /mnt/external_sd/org.xbmc.xbmc/*.*`
        for INFILES in $APKLIST
        do
          cp - r /mnt/external_sd/org.xbmc.xbmc/ /data/
        done
    fi
    
    if [ -e /system/preinstall/ ]
    then
        APKLIST=`ls /system/preinstall/*.apk`
        for INFILES in $APKLIST
        do
          pm install -r $INFILES
        done
    fi
    
    if [ -e /mnt/external_sd/autoinstall/ ]
    then
        APKLIST=`ls /mnt/external_sd/autoinstall/*.apk`
        for INFILES in $APKLIST
        do
            pm install -r $INFILES
        done
    fi

    busybox touch /data/.notfirstboot

fi
exit
