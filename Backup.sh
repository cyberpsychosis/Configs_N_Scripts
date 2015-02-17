#!/bin/bash

########################################################################################
#The purpose of this script is to backup specific files to the Grive Folder for syncing#
########################################################################################


##### Label Local Backup Folders #####################
GRIVE="/home/keystone/Grive/"
BCon="/home/keystone/Grive/BackupCon/"
BProj="/home/keystone/Grive/BackupProj/"
##### Label Config files #############################
BASHRC="/home/keystone/.bashrc"					    #.bashrc
VIMRC="/home/keystone/.vimrc"					    #.vimrc
XINITRC="/home/keystone/.xinitrc"				    #.xinitrc
BACKUP="/home/keystone/bin/Backup.sh"			    #BackupScript (this one)
AWESRC="/home/keystone/.config/awesome/rc.lua"			    #The Awesome Config File
AWESTH="/home/keystone/.config/awesome/themes/default/theme.lua"    #The Awesome Theme File
##### Label Project Files ############################
CLFU="/home/keystone/.CLFu"
ARCHBLD="/home/keystone/ArchBuild.md"
TODO="/home/keystone/todo.md"
#### Label Library ##################################
LIB="/home/keystone/Calibre Library/"




# Functions ##########################################

backup_configs()
{
cp "$BASHRC"	    "$BCon"/bashrc;	    #.files must be renamed
cp "$VIMRC" 	    "$BCon"/vimrc;	    #because grive cannot read them
cp "$XINITRC"	    "$BCon"/xinitrc;
cp "$BACKUP"	    "$BCon";
cp "$AWESRC"	    "$BCon";
cp "$AWESTH"	    "$BCon";

echo Config files copied to local backup directory;
}




backup_projects()
{
cp "$CLFU"	    "$BProj"/CLFu;
cp "$ARCHBLD"	    "$BProj";
cp "$TODO"	    "$BProj";

echo Project files copied to local backup directory;
}


sync_grive()
{
cd $GRIVE;

grive;
}


sync_library()
{
cd "$LIB";   #needs the quotes because there is a space in the link.

grive;
}


close_msg()
{
echo
echo
echo
echo "==========================================================="
echo "Backup and Sync Complete"; date
echo "==========================================================="

}



# Selection Menu ####################################
echo
echo 
echo "                     Grive Backup Menu                     " 
echo "===========================================================" 
echo "-------------------  1) Full Backup     -------------------" 
echo "-------------------  2) Configurations  -------------------"
echo "-------------------  3) Projects        -------------------"
#echo "==========================================================="
echo "-------------------  4) Elibrary        -------------------"
echo "==========================================================="
echo 
echo 
read n
    case $n in
    1) 
	echo
	echo
	echo "Full Backup"
	backup_configs
	backup_projects
	sync_grive
	#sync_library
	close_msg
    ;;

    2) 
	echo
	echo
	echo "Backing up Config Files"
	backup_configs
	sync_grive
	close_msg
    ;;

    3) 
	echo
	echo
	echo "Backing up Project Files"
	backup_projects
        sync_grive
	close_msg
    ;;

    4) 
	echo
	echo
	echo "Backing up Elibrary"
	sync_library
	close_msg
	#does not require sync_grive
    ;;

    *)	
	echo
	echo
	echo "That is not an option"
    esac

####################################################


##Possible future additions
#1. Add a log to track updates
#2. Add a loop for the menu to select multiple options before exiting.





