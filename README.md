# Replace String
Simple script in shell to replace strings from files using sed in a easy way.

With this script it's possible replace content in files recursively, you just need pass the text that you are looking for and the text used to exchange.

## Configure
```
sudo chmod +x replacestring.sh
sudo cp replacestring.sh /usr/local/bin/
```
## Arguments

* $1 "original text"
* $2 "new text replace"
* $3 "filename" <optional>

## Usage: 
```
replacestring.sh "original_text" "new_text_to_replace"
replacestring.sh "original_text" "new_text_to_replace" "*.php"
```

## Dependences

- grep https://www.gnu.org/software/grep/
- findutils https://www.gnu.org/software/findutils/
- xargs https://www.gnu.org/software/findutils/
- sed https://www.gnu.org/software/sed/

# This is GNU Software, please share! 

that's all
