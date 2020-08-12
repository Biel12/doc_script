#! /bin/bash
# -*- coding: utf-8 -*-
#********************************************************************************
#NoReq.4 -- archivo: install_zurich.sh
#Autor/Fecha -- MNS 23.07.20
#Descripcion -- Instalación automática de entorno Zurich
#********************************************************************************


#! /bin/bash
# -*- coding: utf-8 -*-
#********************************************************************************
#NoReq.4 -- archivo: install_zurich.sh
#Autor/Fecha -- MNS 23.07.20
#Descripcion -- Instalación automática de entorno Zurich
#********************************************************************************


#`echo sudo -s`
#echo -e "Ejecucion exitosa \n" #$?

for (( c=1; c<=100; c++ ))
do
	case $c in
		1) `echo yum update -y`
			if [ $? -eq 0 ]; then				#Validamos la ejecucion del comando
				echo -e "Ejecucion exitosa \n" # $? Indicamos que el comando se ejecuto de manera correcta 
				continue
			else
				echo `yum update &> "nuevo.txt"` #Redirecciona la salida del comando al archivo en caso de error
				break							 #y para la ejecucion del script
			fi	
			;;
		2) `echo yum upgrade -y`
		    if [ $? -eq 0 ]; then
			    echo -e "Ejecucion exitosa \n" #$?
				continue
		    else
				echo `yum upgrade -y &> "nuevo.txt"`
				break
			fi	
			;;
		3)  echo `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py python get-pip.py  &>"nuevo.txt"`
				break
		    fi
			;;	

		4)  echo `python get-pip.py `		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `python get-pip.py   &>"nuevo.txt"`
				break
		    fi
			;;

		5)  `echo pip install update setuptools`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `pip install update setuptools  &>"nuevo.txt"`
				break
		    fi
			;;

		# 6)  `sudo subscription-manager repos --enable rhel-7-server-extras-rpms`		    
	 #        if [ $? -eq 0 ]; then
	 #        	echo -e "Ejecucion exitosa \n" #$?
		#         continue
		#     else
		# 	    echo `sudo subscription-manager repos --enable rhel-7-server-extras-rpms  &>"nuevo.txt"`
		# 		break
		#     fi
		# 	;;	
		# 7)  `sudo subscription-manager repos --enable rhel-7-server-optional-rpms`		    
	 #        if [ $? -eq 0 ]; then
	 #        	echo -e "Ejecucion exitosa \n" #$?
		#         continue
		#     else
		# 	    echo `sudo subscription-manager repos --enable rhel-7-server-optional-rpms  &>"nuevo.txt"`
		# 		break
		#     fi
		# 	;;

		# 8)  `sudo subscription-manager repos --enable rhel-server-rhscl-7-rpms`		    
	 #        if [ $? -eq 0 ]; then
	 #        	echo -e "Ejecucion exitosa \n" #$?
		#         continue
		#     else
		# 	    echo `sudo subscription-manager repos --enable rhel-server-rhscl-7-rpms  &>"nuevo.txt"`
		# 		break
		#     fi
		# 	;;	

		# 9)  `subscription-manager repos --enable rhel-7-server-devtools-rpms`		    
	 #        if [ $? -eq 0 ]; then
	 #        	echo -e "Ejecucion exitosa \n" #$?
		#         continue
		#     else
		# 	    echo `subscription-manager repos --enable rhel-7-server-devtools-rpms  &>"nuevo.txt"`
		# 		break
		#     fi
		# 	;;							

		10)  cd "/etc/pki/rpm-gpg"		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `cd "/etc/pki/rpm-gpg" &>"nuevo.txt"`
				break
		    fi
			;;

		11) wget -O RPM-GPG-KEY-redhat-devel https://www.redhat.com/security/data/a5787476.txt
	        if [ $? -eq 0 ]; then
		    	echo -e "Ejecucion exitosa \n" #$?	        	
				continue
			else
				echo `wget -O RPM-GPG-KEY-redhat-devel https://www.redhat.com/security/data/a5787476.txt &> "nuevo.txt"`
				break
			fi
			;;

		12) rpm --import RPM-GPG-KEY-redhat-devel
	        if [ $? -eq 0 ]; then
		    	echo -e "Ejecucion exitosa \n" #$?	        	
				continue
			else
				echo `rpm --import RPM-GPG-KEY-redhat-devel &> "nuevo.txt"`
				break
			fi
			;;


		13) `echo yum install zip -y`
	        if [ $? -eq 0 ]; then
		    	echo -e "Ejecucion exitosa \n" #$?	        	
				continue
			else
				echo `yum install zip &> "nuevo.txt"`
				break
			fi
			;;

		14)  `echo sudo dnf install python2`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `sudo dnf install python2 &> "nuevo.txt"`
				break
		    fi
		 	;;

		15)  `echo yum -y groupinstall "Development Tools"`
	        if [ $? -eq 0 ]; then
		    	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum -y groupinstall 'Development Tools' &>"nuevo.txt"`
				break
		    fi 
			;;
		16)  `echo yum -y install python-lxml`
	        if [ $? -eq 0 ]; then
		    	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum -y install python-lxml &>"nuevo.txt"`
				break
		    fi
			;;

		17)  `echo dnf -y groupinstall development`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `dnf -y groupinstall development &>"nuevo.txt"`
				break
		    fi
			;;	
		18)  `echo yum -y install git`
	        if [ $? -eq 0 ]; then
		    	echo -e "Ejecucion exitosa \n" #$?	        	
		        continue
		    else
			    echo `yum -y install git &>"nuevo.txt"`
				break
		    fi
			;;
		19)  `echo yum install -y zlib-devel`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y zlib-devel &>"nuevo.txt"`
				break
		    fi
			;;
		20)  `echo yum install -y bzip2-devel`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y bzip2-devel &>"nuevo.txt"`
				break
		    fi
			;;
		21)  `echo yum install -y openssl-devel`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y openssl-devel &>"nuevo.txt"`
				break
		    fi
			;;
		22)  `echo yum install -y ncurses-devel`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y ncurses-devel &>"nuevo.txt"`
				break
		    fi
			;;
		23)  `echo yum install -y sqlite-devel`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y sqlite-devel &>"nuevo.txt"`
				break
		    fi
			;;
		24)  `echo yum install -y readline-devel`
	        if [ $? -eq 0 ]; then
			    echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum yum install -y readline-devel &>"nuevo.txt"`
				break
		    fi
			;;
		25)  `echo yum install -y tk-devel`
	        if [ $? -eq 0 ]; then
		    	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y tk-devel &>"nuevo.txt"`
				break
		    fi
			;;
		26)  `echo yum install -y gdbm-devel`
	        if [ $? -eq 0 ]; then
			    echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y gdbm-devel &>"nuevo.txt"`
				break
		    fi
			;;
		27)  `echo yum install - y libdb-devel` # sustiuye a  yum install -y db4-devel en Red Hat
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install - y libdb-devel &>"nuevo.txt"`
				break
		    fi
			;;
		28)  `echo yum install -y libpcap-devel`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y libpcap-devel &>"nuevo.txt"`
				break
		    fi
			;;
		29)  `echo yum install -y xz-devel`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y xz-devel &>"nuevo.txt"`
				break
		    fi
			;;	
		30)  `echo yum install -y libpng`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y libpng &>"nuevo.txt"`
				break
		    fi
			;;		
		31)  `echo yum install -y libjpeg`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y libjpeg &>"nuevo.txt"`
				break
		    fi
			;;	
		32)  `echo yum install -y openssl`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y openssl &>"nuevo.txt"`
				break
		    fi
			;;
		33)  `echo yum install -y libicu`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y libicu &>"nuevo.txt"`
				break
		    fi
			;;
		34)  `echo yum install -y icu`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y icu &>"nuevo.txt"`
				break
		    fi
			;;
		35)  `echo yum install -y libX11`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y libX11 &>"nuevo.txt"`
				break
		    fi
			;;
		36)  `echo yum install -y libXext`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y libXext &>"nuevo.txt"`
				break
		    fi
			;;
		37)  `echo yum install -y libXrender`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y libXrender &>"nuevo.txt"`
				break
		    fi
			;;
		38)  `echo yum install -y xorg-x11-fonts-Type1`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y xorg-x11-fonts-Type1 &>"nuevo.txt"`
				break
		    fi
			;;
		39)  `echo yum install -y xorg-x11-fonts-75dpi`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install -y xorg-x11-fonts-75dpi &>"nuevo.txt"`
				break
		    fi
			;;
		40)  echo `curl https://packages.microsoft.com/config/rhel/8/prod.repo > /etc/yum.repos.d/mssql-release.repo`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `curl https://packages.microsoft.com/config/rhel/8/prod.repo > /etc/yum.repos.d/mssql-release.repo &>"nuevo.txt"`
				break
		    fi
			;;	

		41)  echo `sudo curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/7/mssql-server-2017.repo`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `sudo curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/7/mssql-server-2017.repo &>"nuevo.txt"`
				break
		    fi
			;;	

		42)  echo `sudo curl -o /etc/yum.repos.d/msprod.repo https://packages.microsoft.com/config/rhel/7/prod.repo`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `sudo curl -o /etc/yum.repos.d/msprod.repo https://packages.microsoft.com/config/rhel/7/prod.repo &>"nuevo.txt"`
				break
		    fi
			;;	

		43)  echo `curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo`		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo &>"nuevo.txt"`
				break
		    fi
			;;	


		44)  `echo yum remove unixODBC-utf16 unixODBC-utf16-devel`				
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum remove unixODBC-utf16 unixODBC-utf16-devel &>"nuevo.txt"`
				break
		    fi
			;;


		45)  echo `ACCEPT_EULA=Y yum -y install msodbcsql17`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `ACCEPT_EULA=Y yum -y install msodbcsql17 &>"nuevo.txt"`
				break
		    fi
			;;

		46)  echo `ACCEPT_EULA=Y yum -y install mssql-tools`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `sudo ACCEPT_EULA=Y yum install mssql-tools &>"nuevo.txt"`
				break
		    fi
			;;


		47)  `echo yum -y install unixODBC-devel`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install unixODBC-devel &>"nuevo.txt"`
				break
		    fi
			;;

# 		# 33)  `echo yum -y install compat-openssl10`
# 		# 	echo -e "Ejecucion exitosa \n" #$?
# 	 #        if [ $? -eq 0 ]; then
# 		#         continue:
# 		#     else
# 		# 	    echo `yum install compat-openssl10 &>"nuevo.txt"`
# 		# 		break
# 		#     fi
# 		# 	;;

		48)  wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.centos7.x86_64.rpm			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.centos7.x86_64.rpm &>"nuevo.txt"`
				break
		    fi
			;;

		49)  echo `rpm -i wkhtmltox-0.12.6-1.centos7.x86_64.rpm`		
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `rpm -i wkhtmltox-0.12.6-1.centos7.x86_64.rpm &>"nuevo.txt"`
				break
		    fi
			;;

		50)  `echo yum -y install python2-devel`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `yum install python2-devel &>"nuevo.txt"`
				break
		    fi
			;;


#===============================Instalacion de Apache=========================================
		51)  `echo sudo yum -y update httpd`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `sudo yum -y update httpd &>"nuevo.txt"`
				break
		    fi
			;;
		52)  `echo sudo yum -y install httpd`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `sudo yum -y install httpd &>"nuevo.txt"`
				break
		    fi
			;;

		# 53)  `echo sudo systemctl start httpd`			
	 #        if [ $? -eq 0 ]; then
	 #        	echo -e "Ejecucion exitosa \n" #$?
		#         continue
		#     else
		# 	    echo `sudo systemctl start httpd &>"nuevo.txt"`
		# 		break
		#     fi
		# 	;;
#===============================================================================================
		53)  `echo pip2 install virtualenv`
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
		    	echo -e "Ejecucion exitosa \n" #$?
			    echo `pip2 install virtualenv &> nuevo.txt`
				break
		    fi
			;;

		54)  cd "/var/www/"		    
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `cd "/etc/pki/rpm-gpg" &>"nuevo.txt"`
				break
		    fi
			;;

		55)  echo `virtualenv -p $(which python2) python2-virtualenv`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `virtualenv -p $(which python2) python2-virtualenv &>"nuevo.txt"`
				break
		    fi
			;;
		56) source python2-virtualenv/bin/activate
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `source python2-virtualenv/bin/activate &>"nuevo.txt"`	
				break
		    fi
			;;
#==============================Instalacion con Requeriments.txt=====================================
		57)  `echo pip install -r requeriment_zurich.txt`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `pip install -r requeriment_zurich.txt &>"nuevo.txt"`	
				break
		    fi
			;;

		58)  `echo deactivate`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `deactivate &>"nuevo.txt"`	
				break
		    fi
			;;

# #===================================================================================================
# 		59)  `echo sudo yum install python2-pip httpd mod_wsgi -y`			
# 	        if [ $? -eq 0 ]; then
# 	        	echo -e "Ejecucion exitosa \n" #$?
# 		        continue
# 		    else
# 			    echo `sudo yum install python2-pip httpd mod_wsgi -y&>"nuevo.txt"`	
# 				break
# 		    fi
# 			;;
# 		60)  `echo sudo systemctl enable httpd.service`			
# 	        if [ $? -eq 0 ]; then
# 	        	echo -e "Ejecucion exitosa \n" #$?
# 		        continue
# 		    else
# 			    echo `sudo systemctl enable httpd.service -y &>"nuevo.txt"`	
# 				break
# 		    fi
# 			;;
		61)  `echo sudo virtualenv virtualenv`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `sudo virtualenv vitualenv &>"nuevo.txt"`	
				break
		    fi
			;;
		62)  source virtualenv/bin/activate			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `source virtualenv/bin/activate &>"nuevo.txt"`	
				break
		    fi
			;;
		63)  `echo pip install -r requirements.txt`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `pip install -r requirements.txt &>"nuevo.txt"`	
				break
		    fi
			;;

		64)  `echo pip install Flask-Mail`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `pip install Flask-Mail &>"nuevo.txt"`	
				break
		    fi
			;;

		65)  `echo deactivate`			
	        if [ $? -eq 0 ]; then
	        	echo -e "Ejecucion exitosa \n" #$?
		        continue
		    else
			    echo `deactivate &>"nuevo.txt"`	
				break
		    fi
			;;

	esac
done
 







# # ejemplo de uso de argumentos para un script
# echo "Mi primer nombre es $1 "
# echo "Mi apellido es $2 "
# echo "El número total de argumentos es $# "  		
#https://codingornot.com/author/gammc7

# result=`ps aux | grep -i "hola.sh" | grep -v "grep" | wc -l` 
# if [ $result -ge 1 ]				# Si result (-ge) es mayor o igual que 1
# 	then 							
# 		echo "script is runnig"
# 	else 
# 		echo "script is not runnig"
# fi 
