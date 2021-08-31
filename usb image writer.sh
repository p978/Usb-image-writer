echo "Please insert the path to the iso"


read Please

echo "The path is, $Please right?. please type your answer in y or n"
read The

if [ $The = y ]
then
   echo"ok got it"

else
   echo "Please run the script again"
   exit
fi

fdisk -l
echo "Please type your usb name example /dev/xyz"

read Usb

echo "WARINIG PLEASE BACKUP ANY IMPORTANT FILES IN YOUR USB THIS PROCESS WILL ERASE ALL OF THE DATA IN YOUR USB DO YOU WANT TO CONTINUE. please type your answer in y or n"
read WARNING

if [ $WARNING = y ]
then 
   echo "echo please wait ..."

else
   exit
fi

sudo dd bs=4M if=$Please of=$USB conv=fdatasync status=progress