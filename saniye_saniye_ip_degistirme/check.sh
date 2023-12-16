#!/bin/bash

# Fonksiyon: Bir paketin kurulu olup olmadığını kontrol eder
# Kullanım: check_package kurulan_paket_adı
function check_package {
    if dpkg -s "$1" >/dev/null 2>&1; then
        echo "$1 zaten kurulu."
        return 0
    else
        echo "$1 kurulu değil."
        return 1
    fi
}

# Fonksiyon: Kullanıcıdan evet/hayır girişi alır
# Kullanım: get_user_input "Soru metni"
function get_user_input {
    read -r -p "$1 (E/H): " choice
    case "$choice" in
        [eE]|[yY]|[eE][vV][eE][tT]) return 0 ;;
        *) return 1 ;;
    esac
}

# Python bağımlılıkları kontrolü
if ! check_package "python3"; then
    echo "Python kurulu değil. Python kurulsun mu?"
    if get_user_input; then
        sudo apt-get update
        sudo apt-get install python3
    fi
fi

# Tor kontrolü
if ! check_package "tor"; then
    echo "Tor kurulu değil. Tor kurulsun mu?"
    if get_user_input; then
        sudo apt-get update
        sudo apt-get install tor
    fi
fi

# İhtiyacınız olan diğer paketleri buraya ekleyebilirsiniz.
# Örneğin:
# if ! check_package "paket_adı"; then
#     echo "paket_adı kurulu değil. paket_adı kurulsun mu?"
#     if get_user_input; then
#         sudo apt-get update
#         sudo apt-get install paket_adı
#     fi
# fi

echo "Kurulum tamamlandı."
