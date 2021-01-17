export WORKON_HOME=~/python_envs
source /usr/local/bin/virtualenvwrapper.sh
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

print_line_divider(){
        echo "-------------------------------------------------------\n"
}
print_user(){
  str1=$(whoami)
  result=$(echo $str1 | grep root)
  if [ $result = root ]
  then
    echo "\[\e[33m\]ROOT\[\e[0m\]"
  else
    echo "\[\e[33m\]USER\[\e[0m\]"
  fi
}
print_path(){
  echo "\[\e[35m\]\w\[\e[0m\]"
}
print_git_branch(){
  result=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')
  echo "\[\e[31m\]\[\e[43m\]$result\[\e[0m\]"
}
export PS1="$(print_line_divider) $(print_user) on $(print_path) sur  $(print_git_branch) \$ "
