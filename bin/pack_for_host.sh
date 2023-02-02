# 注意修改 oh-my-env 目录名为你的目录名
dir=tangpoetry

time=$(date +'%Y%m%d-%H%M%S')
dist=tmp/tangpoetry-$time.tar.gz
current_dir=$(dirname $0)
deploy_dir=/workspaces/$dir/tangpoetry_deploy

yes | rm tmp/tangpoetry-*.tar.gz; 
yes | rm $deploy_dir/tangpoetry-*.tar.gz; 



tar --exclude="tmp/cache/*" -czv -f $dist *
mkdir -p $deploy_dir
cp $current_dir/../config/host.Dockerfile $deploy_dir/Dockerfile
cp $current_dir/setup_host.sh $deploy_dir/
mv $dist $deploy_dir
echo $time > $deploy_dir/version
echo 'DONE!'