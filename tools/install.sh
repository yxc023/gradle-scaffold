if [ ! -n "$0" ] ;then
    echo "Please input a templateName!"
    exit
fi

if [ "$0" == "sh" ] ;then
    echo "Please input a templateName!!"
    exit
fi

templateName=$0

url="https://raw.githubusercontent.com/yxc023/spring-boot-scaffold/master/buildScripts/$templateName/_install.sh"
echo $url
sh -c "$(curl -fsSL $url)"