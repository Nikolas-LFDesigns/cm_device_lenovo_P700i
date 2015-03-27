#! /bin/bash

function apply_patch()
{
    echo "patch -p1 < $1"
    patch -p1 < $1
}
 
{   clear
        echo "Welcome to CmX10 patchs installer"
    echo
    if find $(pwd)/patches -name "*.patch" >&/dev/null ; then   
		rom_root=`pwd`
		rom_root=$rom_root/../../../
		cd patches
        patch_directory=`pwd`
        file_list=`find $patch_directory -name "*.patch"`
        echo
                echo "Patchs files found" 
                for n in $file_list 
                do
                    i=$(($i+1))
                    patchArray[$i]=$n
                    echo "  $i. $n" 
                done
        echo
        #Go to the ROM root folder
        cd $rom_root
        echo -n "Please enter number of the patch you want to install (all=0, quit=q): "       
        read ans
            if [ "$ans" == "0" ]; then
                for a in $file_list 
                do          
					dir_path=$(dirname $a)
					dir_path="."${dir_path#$patch_directory}
					cd $dir_path
                    apply_patch $a
					cd $rom_root
                done
            fi
            if [ "$ans" == "q" ]; then
            exit 0
            fi
            if [ "`echo $ans | sed 's/[0-9]*//'`" == "" ] || [ "ans"=="1" ]; then
            a=${patchArray[$ans]}
            if [ "$a" == "" ]; then
                exit 0
                fi
            else
                exit 0
            fi  
			dir_path=$(dirname $a)
			dir_path="."${dir_path#$patch_directory}
			cd $dir_path
            apply_patch $a
			cd $rom_root

            
            
    else
        echo "There are no patchs found"
    fi        
}


