#!/bin/bash
# Komutun çıktısını bir değişkene atıyoruz
hash_output=$(tor --hash-password 123456)

# Çıktıyı bir dosyaya yazıyoruz
echo "$hash_output" > tor_hash.txt

echo "Hash değeri dosyaya yazıldı."
# Aramak istediğiniz dosyanın adını buraya girin
dosya="tor_hash.txt"

# Dosyayı satır satır okuyarak "16 " ile başlayan satırı buluyoruz
while IFS= read -r line; do
  if [[ "$line" == 16* ]]; then
  
  x="HashedControlPassword $line"
  
    echo "16 ile başlayan satır: $x"
    # B dosyasındaki "16 ile başlayan satır" yerine bulduğumuz satırı yazıyoruz
   sudo sed -i "s/^HashedControlPassword.*$/$x/" /etc/tor/torrc
    echo "Değiştirme işlemi tamamlandı."
    exit 0
  fi
done < "$dosya"

echo "16 ile başlayan satır bulunamadı."
exit 1

