# Kill Processes
#!/bin/bash
kp () {
  ps aux | grep $1 > /dev/null
  mypid=$(pidof $1)
  if [ "$mypid" != "" ]; then
    kill -9 $(pidof $1)
    if [[ "$?" == "0" ]]; then
      echo "PID $mypid ($1) killed."
    fi
  else
    echo "None killed."
  fi
  return;
}

##################
# Uptime
##################
myuptime () {
  uptime | awk '{ print "Uptime:", $3, $4, $5 }' | sed 's/,//g'
  return;
}

###################
# Tar and Compress
##################
targz() { tar -zcvf $1.tar.gz $1; rm -r $1; }
# extra .tar.gz
untargz() { tar -zxvf $1; rm -r $1; }


#################
# Make dir and cd to it
####################
mkcd() { mkdir -p $1; cd $1 }


###################
# Creates a pull request on GitHub for the currently checked out branch
#####################
function pr () {
  if ["$1" == ""]
  then
      echo "Please provide the name of the branch to create a pull request against."
  else
      local repo=`git remote -v | grep -m 1 "(push)" | sed -e "s/.*github.com[:/]\(.*\)\.git.*/\1/"`
      local branch=`git name-rev --name-only HEAD`
      echo "... creating pull request for branch \"$branch\" in \"$repo\""
      open https://github.com/$repo/compare/$1...$branch
  fi
}

#######################
# Fetches a pull request from GitHub given the pull request number
######################
function fpr () {
  echo git fetch origin pull/$1/head:pr$1
  git fetch origin pull/$1/head:pr$1
  echo git checkout pr$1
  git checkout pr$1
}
