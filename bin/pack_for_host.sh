#! /bin/bash
echo "hello world"
dir=tangpoetry

time=$(date +'%Y%m%d-%H%M%S')
echo $time
dist=tmp/tangpoetry-$time.tar.gz
current_dir=$(dirname $0)
deploy_dir=./workspaces/$dir/tangpoetry_deploy

yes | rm ./tmp/tangpoetry-*.tar.gz; 
yes | rm $deploy_dir/tangpoetry-*.tar.gz; 

echo $current_dir;
# # --exclude 不打包
tar --exclude="tmp/cache/*" -czv -f $dist *
mkdir -p $deploy_dir
cp ./Dockerfile $deploy_dir/Dockerfile
cp $current_dir/setup_for_host.sh $deploy_dir/
mv $dist $deploy_dir
echo $time > $deploy_dir/version
echo 'DONE!'