# Remove Kernel Old
        grubby --default-kernel
        rpm -q kernel
        awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg

        yum remove kernel-3.10.*
        grub2-mkconfig -o /boot/grub2/grub.cfg


# Install Package
        yum update-minimal -y
        yum install oracle-epel-release-el7 -y
        
        yum install oracle-database-preinstall-19c.x86_64 -y
        
        yum install git tmux tree vim -y
        yum install zip bzip2 wget lsof -y
        yum install the_silver_searcher -y
        yum install bash-completion.noarch -y
        yum install bash-completion-extras.noarch -y
        yum install python3
        pip3 install PYGMENTS --user 
        yum install rlwrap -y



1. [Install RANGER](https://www.linuxuntu.com/install-ranger-linux/)
  * User root

            git clone https://github.com/hut/ranger.git && cd ranger && make install  


2. [Install FZF](https://www.tecmint.com/fzf-fuzzy-file-search-from-linux-terminal/)
  *  User
  
            git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
            cd ~/.fzf/
            ./install

3. [Install BTOP](https://www.tecmint.com/btop-system-monitoring-tool-for-linux/)
  *  User root
        
                wget https://github.com/aristocratos/btop/releases/download/v1.4.5/btop-x86_64-linux-musl.tbz
                tar -xvjf btop-x86_64-linux-musl.tbz
                cd btop
                ./install.sh
    
5. Mount iso software

        mount -t iso9660 -o ro,uid=oracle,gid=oinstall /dev/sr1 /mnt/software

6. db.env
   
        export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_1
        export PATH=$PATH:$ORACLE_HOME/bin:$ORACLE_HOME/OPatch
        export ORACLE_SID=orcl	
        export ORACLE_BASE=/u01/app/oracle
        
        export DUMP=$ORACLE_BASE/diag/rdbms/$ORACLE_UNQNAME/$ORACLE_SID/trace
        export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib
        export CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib
        export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin
        alias alert="tail -300f $DUMP/alert_$ORACLE_SID.log"
        alias e="env | grep ORA"
        alias p='ps -ef|grep smon'
        alias s='sqlplus / as sysdba'
        alias r='rman target /'
        
        alias cdo='cd /u01/app/oracle/product/19.0.0/dbhome_1/network/admin'
        alias cda='cd  /u01/app/oracle/diag/rdbms/orcl/orcl/trace'
        alias sg='vi /u01/app/oracle/product/19.0.0/dbhome_1/sqlplus/admin/glogin.sql'
        alias rql='rlwrap sqlplus '

7. grid.env

        export ORACLE_SID=+ASM1
        export ORACLE_BASE=/u01/app/grid
        export ORACLE_HOME=/u01/app/19c/grid
        export ORACLE_INVENTORY=/u01/app/oraInventory
        export ORACLE_UNQNAME=+asm
        export DUMP=$ORACLE_BASE/diag/asm/$ORACLE_UNQNAME/$ORACLE_SID/trace
        export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin
        alias alert="tail -300f $DUMP/alert_$ORACLE_SID.log"
        alias e="env | grep ORA"
        alias p='ps -ef|grep smon'
        alias as='sqlplus / as sysasm'
        alias c='crsctl stat res -t'
        alias lsdg='asmcmd lsdg'


