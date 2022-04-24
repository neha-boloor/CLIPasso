#bin/bash
COUNTER=1
for i in `cat list_of_files`;
do
	if [ $(expr $COUNTER % 3) != "0" ]
	then
		python run_object_sketching.py --target_file $i --num_strokes 10  --mask_object 1 &
	else
		python run_object_sketching.py --target_file $i --num_strokes 10  --mask_object 1  &
		wait
	fi
	COUNTER=$((COUNTER+1))
done