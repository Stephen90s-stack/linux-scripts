#!/bin/bash
echo "Enter the string to be replaced"
read str_1
echo "Enter the new string"
read str_2
echo "Replace zip files(yes/no)"
read str_3
foo=()
while read fol;
do
    foo+=($fol)
done < dirlist.txt

  tmpstr=""
  ITER=0
  for Item in ${foo[*]}
  do
    tmpstr+="! -path .$Item "
   ITER+=1
 done

 replace_in_zip_file=''
 echo $tmpstr
 echo $replace_in_zip_file
 if [[ $str_3 = 'no' ]];
  then
    echo $str_3
    replace_in_zip_file+='! -name "*.zip"'
  fi
  echo $replace_in_zip_file
  echo $str_1
  echo $str_2
  find . -type f ! -iname "*.sh" $replace_in_zip_file $tmpstr -exec sed -i 's/'$str_1'/'$str_2'/g' {} +

  echo "Script Completed"