#! /bin/bash
:'This script clones the repository,
changes directory from current where cloning is taking place to the TeamVenter_HackBio2020
It adds the rights to execute the scripts in this directory
executes all scripts via the for loop.
when executing this script you get the error of bad interpreter, consider checking the location of your
executables using which command 
Once you locate the path to your executable,
edit the shebang of each script that has the error of bad interpreter or compiler'
#the command below clones the team Venter repo

git clone https://github.com/Egbusfem/VenterTeamHackBio.git

# changing directory into the repo

cd ./VenterTeamHackBio


# Create and Adding Header to the CSV file 
echo "Name,Email,Slack_ID,Biosteack,Twitter_ID,Hamming_Distance" >> Venter.csv

# add the rights to execute the scripts in this repo
chmod +x script*

#Loop through all the files formats
for file in script/*.jl
do
    julia $file | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5,$6}' >> Venter.csv
done 
for file in script/*.py
do 
    python3 $file | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5,$6}' >> Venter.csv
	
done
for file in script/*.r
do 
    Rscript $file | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5,$6}' >> Venter.csv
	
done
for file in script/*.java
do 
    java $file | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5,$6}' >> Venter.csv
	
done
for file in script/*.cpp
do 
    g++ $file -o Hadia
    Hadia $file | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5,$6}' >> Venter.csv
	
done
for file in script/*.rb
do 
    ruby $file | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5,$6}' >> Venter.csv
	
done
for file in script/*.m
do 
    matlab $file | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5,$6}' >> Venter.csv
	
done

