#!/bin/bash 

SECONDS=0
dirs=(network permissions alb autoscale) 
#dirs=(network permissions alb autoscale codebuild codedeploy codepipeline) 

# Change into each directory and execute update stack script 
for i in "${dirs[@]}"
do 
   echo Updating $i stack .... 
   (cd $i && ./update_stack.sh)
   echo .. done updating $i stack!!! 
done 
echo "Elapsed Time to create update stacks: $(($SECONDS / 60)) minutes and $(($SECONDS % 60)) seconds"
