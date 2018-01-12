# CURRENT_VERSION=$(node -p "require('./package.json').version")
# echo $CURRENT_VERSION


version=$(node -p "require('./package.json').version")
# echo $version
# search='\(version:[[:space:]]*\"\).+\(\"\)'
search='\(version:[[:space:]]*\"\)[[:graph:]]*\(\"\)'
# replace="\1${version}\2"
replace="\1${version}\2"
echo $replace
# search="0.0.0"
sed -i "s/${search}/${replace}/g" ./src/environments/environment.ts

