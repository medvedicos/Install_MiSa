curl -f https://raw.githubusercontent.com/medvedicos/Install_MiSa/refs/heads/main/gethosts \
     --output /etc/init.d/gethosts
chmod +x /etc/init.d/gethosts
/etc/init.d/gethosts enable
/etc/init.d/gethosts start

# ─── banner (единожды) ───────────────────────────────────────
curl -f https://raw.githubusercontent.com/medvedicos/Install_MiSa/refs/heads/main/banner \
     --output /etc/banner

# ─── Cron-задачи (каждый понедельник в 00:04) ────────────────
echo "4 0 * * 1  /etc/init.d/gethosts"   >> /etc/crontabs/root
