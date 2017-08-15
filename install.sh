base_url="https://raw.githubusercontent.com/yxc023/spring-boot-scaffold/master/miniBuild/"

file_array=(
"gradle/wrapper/gradle-wrapper.jar"
"gradle/wrapper/gradle-wrapper.properties"
"gradle/wrapper/init.gradle"
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