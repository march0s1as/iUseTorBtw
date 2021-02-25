{
 esc=""
  greenb="${esc}[42m"
  greenf="${esc}[32m";
  whitef="${esc}[37m";
  italicson="${esc}[3m"; 
 }
# ${yellowf}
clear
echo """${italicson}${greenf}           
                                '''          
                            0O0OOX
                           kkkkk0
                          kkkk              
                        xxXKkkkX
                        KKkOx
                        :xW0No'
                      .0WOkK'lWM
                    ;lXWNkXk0d:lx
                 ':OWWWKWdXNlkOkl,,
              ';kWWWWXkKWkxNN;dxxxd;.
            .:XWWWKOO0NNNkXdXK,oooooo;
           .OWWWOk0NNNNK0lXXoKo;cccccc:
          .kWWKxKNNNXK0OXooKKoO.:::::::; 
          'WWKlNNXKxkOKKKx0o0dx.;;;;;;;;.;
          ;WWokNXko0KKK0kcOOckc ''''''''..
          .XWkdX0lKKK0klOl:0cd; ........ ,
          ';NNl0xoKK00cOOd,kcc, ........ 
           ,;XXcOc0KKOc00d,x::. ......  
             'oKoocxK0ck0o.d',  ....  :
              ;:ll:lokcd,;;.      .            ///march0s1as
                    ;;'..    ..,                                                                                                                                          """
tor () {
cd tor-browser_pt-BR
./start-tor-browser.desktop
}

echo -n """${whitef}
01. Iniciar o serviço Tor, conectar-se no proxy e abrir o Tor Browser.
02. Somente abrir o Tor Browser.

Qual sua escolha? -> """
read proxy

case "$proxy" in
    1|01"")
        sudo service tor start
        sudo sed -i -e '$a\socks4  127.0.0.1 9050' /etc/proxychains.conf
        tor
    ;;
    2|02)
        tor
    ;;
    *)
;;
esac