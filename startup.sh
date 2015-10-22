blue='\e[0;34m'
NC='\e[0m' # No Color
#font colors:
#Black        0;30     Dark Gray     1;30
#Blue         0;34     Light Blue    1;34
#Green        0;32     Light Green   1;32
#Cyan         0;36     Light Cyan    1;36
#Red          0;31     Light Red     1;31
#Purple       0;35     Light Purple  1;35
#Brown/Orange 0;33     Yellow        1;33
#Light Gray   0;37     White         1;37

echo -e "${blue} Configurando sistema...${NC}"

sleep 2

#updates/system changes
echo -e "${blue} Upgrade ${NC}"
sudo apt-get -y upgrade
echo -e "${blue} Update ${NC}"
sudo apt-get -y update
echo -e "${blue} Terminal color ${NC}"
sudo sed -i 's/#force/force/g' ~/.bashrc

echo -e "${blue} Instalando softwares...${NC}"

sleep 2

#softwares
echo  -e "${blue} G++ ${NC}"
sudo apt-get -y install g++
echo  -e "${blue} Chromium ${NC}"
sudo apt-get -y install chromium-browser
echo  -e "${blue} Gparted ${NC}"
sudo apt-get -y install gparted
echo  -e "${blue} NTP ${NC}"
sudo apt-get -y install ntp
echo -e "${blue} Gnome-system-tools ${NC}"
sudo apt-get -y install gnome-system-tools
echo -e "${blue} Gedit and Plugins ${NC}"
sudo apt-get -y install gedit && sudo apt-get -y install gedit-plugins
echo -e "${blue} Dropbox ${NC}"
sudo apt-get -y install nautilus-dropbox
echo -e "${blue} Codeblocks ${NC}"
sudo apt-get -y install codeblocks
echo -e "${blue} Kolour Paint ${NC}"
sudo apt-get -y install kolourpaint4
echo -e "${blue} Git ${NC}"
sudo apt-get -y install git-core
sudo apt-get -y install gitk
echo -e "${blue} Boost ${NC}"
sudo apt-get -y install libboost-all-dev 
echo -e "${blue} SSH Server ${NC}"
sudo apt-get -y install openssh-server 
echo -e "${blue} SSH Client ${NC}"
sudo apt-get -y install openssh-client 
echo -e "${blue} Impresive ${NC}"
sudo apt-get -y install impressive
echo -e "${blue} Armadillo ${NC}"
sudo apt-get -y install r-cran-rcpparmadillo
sudo apt-get -y install libarmadillo-dev
sudo apt-get -y install libarmadillo4
echo -e "${blue} FileZilla ${NC}"
sudo apt-get -y install filezilla
echo -e "${blue} Arduino ${NC}"
sudo apt-get -y install arduino
echo -e "${blue} CIFS - mapear rede ${NC}"
sudo apt-get -y install cifs-utils 
echo -e "${blue} Curses.h ${NC}"
sudo apt-get -y install libncurses5-dev
echo -e "${blue} WINE ${NC}"
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get -y install wine1.7-amd64 winetricks
sudo apt-get -y install curl
sudo apt-get -y install p7zip-full
sudo apt-get -y install winbind
sudo apt-get -y install playonlinux
echo -e "${blue} FFMPEG ${NC}"
sudo add-apt-repository ppa:mc3man/gstffmpeg-keep
sudo apt-get update
sudo apt-get -y install ffmpeg gstreamer0.10-ffmpeg 
echo -e "${blue} COPY ${NC}"
sudo add-apt-repository -y ppa:paolorotolo/copy
sudo apt-get -y update
sudo apt-get -y install copy
echo -e "${blue} Texlive ${NC}"
sudo apt-get -y install texlive-full
echo -e "${blue} Latex-Beamer ${NC}"
sudo apt-get -y install latex-beamer
echo -e "${blue} TeX Live: Portuguese ${NC}"
sudo apt-get -y install texlive-lang-portuguese
echo -e "${blue} Texmaker ${NC}"
sudo apt-get -y install texmaker
echo -e "${blue} Xindy ${NC}"
sudo apt-get -y install xindy
echo -e "${blue} publisher ${NC}"
sudo apt-get -y install texlive-publishers
echo -e "${blue} science ${NC}"
sudo apt-get -y install texlive-science
echo -e "${blue} cheese ${NC}"
sudo apt-get -y install cheese
echo -e "${blue} Core library dependencies (Robô Jimmy) ${NC}"
sudo apt-get -y install build-essential libncurses5-dev libjpeg-dev mplayer mplayer-skins

#Instalando ipython e alguns pacotes úteis
echo -e "${blue} IPython ${NC}"
sudo apt-get -y install python-pip
sudo -H pip install ipython[notebook]
sudo -H pip install numpy scipy matplotlib
sudo -H pip install sklearn
sudo -H pip install scikit-learn

#PS3/Bluetooth dependencies:
echo -e "${blue} PS3/Bluetooth dependencies (Robô Jimmy) ${NC}"
sudo apt-get -y install bluez-utils bluez-compat bluez-hcidump libusb-dev libbluetooth-dev joystick

#opencv
echo -e "${blue} Opencv dependências ${NC}"
sleep 1

sudo apt-get -y autoremove libopencv-dev python-opencv
echo -e "${blue} Opencv dependências ${NC}"
sleep 1
sudo apt-get -y install build-essential cmake
sudo apt-get -y install qt5-default libvtk6-dev
sudo apt-get -y install zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev
sudo apt-get -y install libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libfaac-dev libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev
sudo apt-get -y install libtbb-dev libeigen3-dev
sudo apt-get -y install python-dev python-tk python-numpy python3-dev python3-tk python3-numpy
sudo apt-get -y install ant default-jdk
sudo apt-get -y install doxygen sphinx-common texlive-latex-extra

#sudo apt-get -y install build-essential cmake pkg-config
#sudo apt-get -y install libjpeg62-dev 
#sudo apt-get -y install libtiff4-dev libjasper-dev
#sudo apt-get -y install  libgtk2.0-dev
#sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
#sudo apt-get -y install libdc1394-22-dev
#sudo apt-get -y install libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev 
#sudo apt-get -y install python-dev python-numpy
#sudo apt-get -y install libtbb-dev
#sudo apt-get -y install libqt4-dev
cd 
mkdir opencv
cd opencv
echo -e "${blue} Baixando Opencv-2.4.10 ${NC}"
sleep 1
wget -O opencv-2.4.10.zip http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.10/opencv-2.4.10.zip/download
unzip opencv-2.4.10.zip
cd opencv-2.4.10
mkdir build
cd build 
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
echo -e "${blue} Compilando Opencv-2.4.10 ${NC}"
make -j4
echo -e "${blue} Instalando Opencv-2.4.10 ${NC}"
sleep 1
sudo make install
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig

echo -e "${blue} Autoremove ${NC}"
sudo apt-get -y autoremove

sudo apt-get install -f

echo -e "${blue} Update ${NC}"
sudo apt-get -y update

echo -e "${blue} Configuração realizada ${NC}"


