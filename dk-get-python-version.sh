
export DKPYTHONVERSION=$(. run.sh python --version | awk '// { print $2}'| tr -d '\n' | tr -d '\r' )

#| tr "\r" " ")
#echo "$(. run.sh python --version | awk '// { print $2}'| sed -e 's/\/r//g | tr "\r" " ")"


