    1  ls -l
    2  notas/
    3  orion/
    4  clear
    5  cd evaluation/orion
    6  mv notas apuntes
    7  mkdir respaldos
    8  mv telemetria.log apuntes/
    9  mv config.tmp config.conf
   10  chmod 640 apuntes/telemetria.log
   11  ls -l apuntes/telemetria.log
   12  chmod u+x script.sh
   13  chmod o-w config.conf
   14  ls -l
   15  chmod u+s script.sh
   16  ls -l script.sh
   17  chmod +t /tmp/orion_zone
   18  mkdir /tmp/orion_zone
   19  chmod 777 /tmp/orion_zone
   20  ls -ld /tmp/orion_zone
   21  gpg --gen-key
   22  gpg --encrypt --recipient lyra@orion.lab apuntes/telemetria.log
   23  ls -l apuntes/
   24  history
   25  gpg --clearsign config.conf
   26  gpg --verify script.sh.sig script.sh
   27  gpg --yes --detach-sign script.sh
   28  ls -l
   29  history