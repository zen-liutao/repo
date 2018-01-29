if [ -d $1 ]; then
    exit 0
else
    mkdir $1
    cd $1
    mkdir css js
    echo '<!DOCTYPE>' >> index.html
    echo '<title>Hello</title>' >> index.html
    echo '<h1>Hi</h1>' >> index.html
    cd css
    echo 'h1{color: red;}' >> style.css 
    cd ../js/
    echo 'var string = "Hello World"' >> main.js
    echo 'alert(string)' >> main.js
    cd ../
fi
