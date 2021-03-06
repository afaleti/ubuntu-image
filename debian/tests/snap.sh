sudo snap install core

snapcraft
snapfile=`find . -maxdepth 1 -name \*.snap`

sudo snap install $snapfile --classic --dangerous

here=`pwd`
cd $ADTTMP
mkdir clean
cd clean

ubuntu-image --version
ubuntu-image -d -O $ADTTMP $here/debian/tests/models/pc-amd64-model.assertion
ls -l $ADTTMP/pc.img
