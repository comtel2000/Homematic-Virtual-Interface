mkdir -p tmp
rm -rf tmp/*
mkdir -p tmp/hvl

# copy all relevant stuff
cp -a update_script tmp/
cp -a rc.d tmp/
cp -a hvl tmp/

# generate archive
cd tmp
tar --exclude=.* -czvf ../hvl_addon.tar.gz *
cd ..
rm -rf tmp
