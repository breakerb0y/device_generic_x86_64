#!/system/bin/sh
if [ ! -f /data/system/display_settings.xml ]; then
    cp /system/etc/display_settings.xml /data/system/display_settings.xml
    chmod 0644 /data/system/display_settings.xml
    chown system:system /data/system/display_settings.xml
fi
