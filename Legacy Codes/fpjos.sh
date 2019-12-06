#Veqqy Al Hamda 
#18081010056
#Sisop Pararel B


utama(){
loop=1;
jumlah=0;
tiket=0;
total=0;
Jenis_Jen1=0;
Jenis_Jen2=0;
jenis_Jen3=0;



declare -a jum 
declare -a jen1
declare -a jen2
declare -a jen3

function input_Data(){
	echo "=======DATA========";
	echo "Masukkan nama :";
	read nama;
	echo "Masukkan alamat :";
	read alamat;
	echo "Masukkan umur anda :";
	read umur;
	echo "Masukkan tinggi badan :";
	read tinggi;
	clear
}

function input_harga(){
	clear;
	echo "=======HARGA========"
	echo "1.Umur 5 - 10 : 5000 ";
	echo "2.Umur 11 - 20 : 10000 ";
	echo "3.Umur 21 - 30 : 15000 ";
	echo "4.Umur 31 - 40 : 20000 ";
	echo "5.Umur 41 - 50 : 10000 ";
	read -p "Pilihan kelas anda : " pil;

	if [[ $pil -eq 1 ]]; then tiket="5000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*5000;
	echo "$total";
	elif [[ $pil -eq 2 ]]; then tiket="10000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*10000;
	echo "$total";
	elif [[ $pil -eq 3 ]]; then tiket="15000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*15000;
	echo "$total";
	elif [[ $pil -eq 4 ]]; then tiket="20000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*20000;
	echo "$total";
	elif [[ $pil -eq 5 ]]; then tiket="10000";
		echo "banyak tiket :"
		read Jum;
	let total=Jum*10000;
	echo "$total";
	else
	echo "======================";
	echo "MAAF TIDAK TERSEDIA!!!";
	echo "======================";	

fi
}
function lihat_Harga(){
		echo "======CEK DATA======"
		echo "nama : $nama ";
		echo "alamat : $alamat";
		echo "umur : $umur";
		echo "tinggi badan : $tinggi";
		echo "total harga : $total";
		echo "=====================";
}
function Cetak(){

	echo "=======CETAK TIKET=======";
	echo "nama : $nama ";
	echo "alamat : $alamat";
	echo "nomor tlp : $nomor";
	echo "banyak tiket : $Jum";
	echo "total harga : $total";
	echo "=========================";
}

	

while [[ loop -eq 1 ]]; do
	echo "||         		 SELAMAT DATANG                 ||";
	echo "||    DIPELAYANAN PEMBELIAN TIKET WAHANA PERMAINAN	||";
	echo "||    			KOMEDI PUTAR 			||";
	echo "1. Input data pembelian tiket                		 	  ";
	echo "2. input harga tiket untuk kategori umur            	  ";
	echo "3. view data diri dan harga             		      	  ";
	echo "4. Cetak Tiket                          		      	  ";
	echo "5. Keluar Program                       		      	  ";
	echo "Pilihan : "
	read pilih;
	clear
	

	case "$pilih" in
		"1" )
		input_Data;
			;;
		"2" )
		input_harga;
			;;
		"3" )
		lihat_Harga;
			;;
		"4" )
		Cetak;
			;;
		"5" )
		let loop=2;
			;;
	esac

done
}

kedua(){
	
	deadlock(){
	echo "Apakah anda yakin memilih deadlock"
	echo "Jika anda ingin menghentikannya tekan ctrl+c"
	echo "Apakah anda yakin? (y/n)"
	read yakinanda
	if [[ $yakinanda == y ]]; then
	while :; do

dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1

if [ $?  -eq 0 ]; then

echo “$2” > in.fifo exit 0

fi

done
fi
if [[ $yakinanda ]]; then
	echo "Kamu tidak berani :D"
fi	
}


membuatuser(){
	echo "masukkan nama user baru:"
	read userbaru
	sudo adduser $userbaru
}


browsing(){

	firefox
}


installaplikasi(){
	echo "aplikasi apa yang ingin anda install?"
	read installaplikasi
	sudo apt install $installaplikasi
}


while [[ pilih=1 ]]; do
	echo "========================================="
	echo "	    MENU PROGRAM    		   "
	echo "=========================================" 
	echo "1. Apakah anda berani untuk mendeadlock? "
	echo "2. membuat user baru					   "
	echo "3. Apakah anda ingin browsing hehe? 	   "
	echo "4. Mari menginstall suatu aplikasi 	   "
	echo "5. Keluar							   	   "
	echo "========================================="
	echo -n "Masukkan pilihan anda "
	read pilih



	case "$pilih" in 
		"1" ) deadlock; 
			;; 
		"2" ) membuatuser;
			;;
 	    "3" ) browsing;
			;;
		"4" ) installaplikasi; 
			;;
 		"5")break;
 			 ;;	
 			  esac

done
}

while [[ pilith=1 ]]; do
	echo "Menu"
	echo "1. Pembelian Tiket Wahana Komedi Putar"
	echo "2. Menu Sisop"
	echo "3. Keluar"
	echo "Masukkan pilihan anda :"
	read pilih
	clear
	case $pilih in
		1 )
		utama
			;;
		2 )
		kedua
		;;
		3 )
		clear
		echo "Terima kasih telah berkunjung"
		echo -n "Tekan enter"
		read enter
		exit
		;;
	esac
done