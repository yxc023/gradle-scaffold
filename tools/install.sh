templateName=$0
url="https://raw.githubusercontent.com/yxc023/spring-boot-scaffold/master/buildScripts/$templateName/_install.sh"
echo $url
sh -c "$(curl -fsSL $url)"