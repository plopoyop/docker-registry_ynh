installdeps(){
    #install dependencies
    ynh_install_app_dependencies apt-transport-https ca-certificates curl gnupg2 software-properties-common

    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

    sudo add-apt-repository "deb https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    sudo apt-get update

    ynh_install_app_dependencies docker-ce
}


startservice(){
    docker run -d \
      -p $port:5000 \
      --restart=always \
      --name $app \
      -v $storage_path:/var/lib/registry \
      registry:2
}

stopservice(){
    docker stop $app
}

removeservice(){
    docker rm $app
}
