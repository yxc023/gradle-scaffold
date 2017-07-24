base_url="https://raw.githubusercontent.com/yxc023/spring-boot-scaffold/master/buildScripts/java-lianjia/"

file_array=(
"gradle/wrapper/gradle-wrapper.jar" "gradle/wrapper/gradle-wrapper.properties"
".gitignore"
"build.gradle"
"gradlew"
"gradlew.bat"
)

mkdir -p gradle/wrapper

for var in ${file_array[@]}
do
    echo $base_url$var
    curl -fsSL $base_url$var > $var
done

chmod +x gradlew gradlew.bat

echo "\n"
echo "ok"
echo "Then you need 『fnrd.group.url』，『fnrd.group.username』，『fnrd.group.password』in file 『~/..gradle/gradle.properties』"
echo "You can change the properites name also, just keep same with it in 『build.gradle』"