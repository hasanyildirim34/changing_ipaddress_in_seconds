#!/bin/bash
hasan yildirim  brsk
# Komutun çıktısını bir değişkene atıyoruz
hash_output=$(tor --hash-password 123456)

# Çıktıyı "tor_hash.txt" dosyasına yazdırıyoruz
echo "$hash_output" > tor_hash.txt

echo "Hash değeri /etc/tor/torrc dosyasına yazıldı."

# Aramak istediğiniz dosyanın adını buraya girin
dosya="tor_hash.txt"

# Dosyayı satır satır okuyarak "16 " ile başlayan satırı buluyoruz
while IFS= read -r line; do
  if [[ "$line" == 16* ]]; then
    x="HashedControlPassword $line"
    echo "16 ile başlayan satır: $x"
    # "torrc" dosyasındaki "HashedControlPassword" satırını değiştiriyoruz
    sudo sed -i "s/^HashedControlPassword.*$/$x/" /etc/tor/torrc
    echo "Değiştirme işlemi tamamlandı."
    break
  fi
done < "$dosya"
aktif_kullanicisi=$(users)
# Tor servisi için root olarak giriş yapılmasını gerektiren bölüm
while true; do
    # Kullanıcıya ana menüyü göster
    echo "                                    "
    echo " Lütfen tor servisi için root olarak giriş yapmayı unutmayınız!! "
    echo "sudo apt install python-tk kurmayı unutma "
    echo "Lütfen bir seçim yapın:"
    echo "1. Tor durumunu göster (service tor status)"
    echo "2. Tor servisini başlat (service tor start)"
    echo "3. Tor servisini durdur (service tor stop)"
    echo "4. toriptables2  klasörüne git ve ./toriptables2.py -l  çalıştır"
    echo "5. Hata:toriptables2: Böyle bir dosya ya da dizin yok ise (toriptables -f ) "
    echo "6. tor_ip_switcher klasörüne git &&./tor_ip_switcher.py çalışsın "
    echo "Q. Çıkış yap"
    read -p "Seçiminizi girin (1/2/3/4/5/6/qQ): " choice
    echo "                                                                           
  "
    case "$choice" in
        1)
            # 1. seçenek: "service tor status" komutunu çalıştır
            service tor status 
            ;;
            
        2)
            # 2. seçenek: Yeni alt menü aç, kullanıcıya bir tuşa basana kadar beklet
            gnome-terminal -- bash -c "service tor start; echo 'Tor servisi başlatıldı. Seçeneklere dönmek için Enter tuşuna basın.'; read"
            ;;
        3)
            # 3. seçenek: Yeni alt menü aç, kullanıcıya bir tuşa basana kadar beklet
            gnome-terminal -- bash -c "service tor stop; echo 'Tor servisi durduruldu. Seçeneklere dönmek için Enter tuşuna basın.'; read"
            ;;
         4) cd toriptables2 &&./toriptables2.py -l ;cd ..;;
         5) cd toriptables2 &&./toriptables2.py -f&& service tor stop;cd .. ;;
         6) cd  tor_ip_switcher &&./tor_ip_switcher.py&cd ..;;
         7) sudo -u $aktif_kullanicisi gnome-terminal --working-directory=/home/sah/Desktop/saniye_saniye_ip_değiştirme/programım ;;
         
         #gnome-terminal -- bash -c "sudo -i -u $aktif_kullanicisi;  cd '/home/sah/Desktop/saniye_saniye_ip _değiştirme/programım';./y.sh";;


        [Qq])
            # Q veya q girilirse ana döngüden çık
            break
            ;;
        *)
            echo "Geçersiz seçim. Lütfen 1, 2, 3 veya Q seçeneğini girin."
            ;;
    esac
done




