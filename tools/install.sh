templateName=$0
url="https://raw.githubusercontent.com/yxc023/spring-boot-scaffold/master/buildScripts/$templateName/_install.sh"
echo $url
exec "$(curl -fsSL $url)"