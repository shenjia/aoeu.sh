<h1>aoeu.sh</h1>

<p>This is a shell alias sets, design for Linux / MacOS users, especially for Dvorak keyboard layout users. If you are Qwerty users, there is another solution: <a href="github.com/shenjia/asdf.sh">asdf.sh</a>.</p>

<p>We deal with shell everyday, type same commands around and around. </p>

<p>Sometimes, we create shell scripts to do complex chores. This can avoid us to type repeat commands, but how about the most frequently used commands?</p>

<p>Some commands are very short, such as '<strong>vim</strong>' and '<strong>cd ..</strong>', but we type it MANY MANY times everyday. They are short, but not enough.</p>

<p>Otherwise, some commands are not short enough, such as '<strong>apt-cache search</strong>' and '<strong>ps aux | grep</strong>'.</p>

<p>Maybe you think these commands are short enough, but what if you are lack of time? (fixing a bug on product server, for example)

<p>By bind the most frequently used commands to 1 ~ 2 key. That will save lots of time, and our fingers.</p>

<h2>Dealing with directories</h2>

<pre>
alias i='cd'           // go in
alias o='cd ..'        // go out
alias a='ls'           // list
alias aa='ls | grep'   // list with filter
alias u='pwd'          // show current location
alias m='mkdir'        // make directory
alias d='rm -r'        // delete directory ( or files )
</pre>

<h2>Dealing with files</h2>

<pre>
alias e='vim'          // edit a file
alias f='find -name'   // find file by name
alias t='tail -f'      // keep watching at a file
alias x='tar zxvf'     // extract compress file
</pre>

<h2>Dealing with packages</h2>

<pre>
alias sh="apt-cache search" // search a package (this command is for Ubuntu version, use the "ports search" for MacOS, "yum search" for Centos, )
alias in='apt-get install'  // install a package
alias un='apt-get remove'   // uninstall a package
</pre>

<h2>Dealing with system</h2>

<pre>
alias q='exit'              // exit shell
alias c='clear'             // clear monitor
alias p='ps aux | grep'     // look for process
alias h='e /etc/hosts'      // edit host config
</pre>

<h2>Dealing with aoeu.sh</h2>

<pre>
alias uuu="e /usr/local/bin/aoeu.sh" // update the aoeu.sh
alias eee=". /usr/local/bin/aoeu.sh" // execute the aoeu.sh
</pre>

<h2>Make your own aoeu.sh!</h2>

<p>Create your own alias now! Before you set a new alias, type it on shell and make sure it's <strong>NOT</strong> used. </p>

<p>For example, I'm a web engineer, so I create those for develop:

<pre>
alias nr='service nginx restart'
alias phpr='service php5-fpm restart'
alias phpi='e /etc/php5/fpm/php.ini'
alias sn='svn st | grep ? | awk '\''{print $2}'\'             
alias sa='svn add `svn st | grep ? | awk '\''{print $2}'\''`' 
alias sr='svn rm --force'                                     
alias si='svn ci'                                             
alias so='svn co'                   
.....                          
</pre>

