#/bin/sh

cd ../rust-nethuns
cargo doc --no-deps --features=netmap
cd -
rm -rf ./src
cp -r ../rust-nethuns/target/doc ./src
echo "<meta http-equiv=\"refresh\" content=\"0; url=nethuns/index.html\">" > ./src/index.html
