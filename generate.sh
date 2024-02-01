#/bin/sh

cd ../rust-nethuns
cargo doc --no-deps --features=netmap
cd -
rm -rf ./docs
cp -r ../rust-nethuns/target/doc ./docs
echo "<meta http-equiv=\"refresh\" content=\"0; url=nethuns/index.html\">" > ./docs/index.html
