gitgen(){
echo "Listing FIles"
git ls-files > /home/shravank/project/notebooks/gitoutput.txt
cat /home/shravank/project/notebooks/gitoutput.txt

cat /home/shravank/project/notebooks/gitoutput.txt | while read line
do
echo "inside loop: name of the file "
echo $line

cmdhead="head -10 $line"
cmdgrep="$cmdhead | grep -c generated"
eval $cmdhead
eval $cmdgrep
echo "cmd executed"
count=$cmdgrep
str="$line , $count"
echo $str >> /home/shravank/project/notebooks/gengencountoutput.csv

done
echo "End of function"
}