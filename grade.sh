CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests


set -e
files=`find`
for file in $files
do
if [[ -f $file ]] && [[ $file != file.txt ]] #insert for correct file 
    then
        echo "The file submitted is not correct."
        exit 1 
    else
        echo "Checking file"
        java GradeServer < $file 
        result = cat $file.expect 
        echo "Calculating" 
        #locate .java file 
        cp -r student-submission/ListExamples.java grading-area
        #Get all the files from .java with the grading tests and 
        #pass it into the grading-area directory 
        exit 0 
fi
done