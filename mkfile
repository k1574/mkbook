<mkconfig
MKSHELL = rc
CHAPTER = `{ ls 2.* 1.* 3* }
TGT = $NAME
all :VQ: $TGT
	echo -n
$TGT :Q: $CHAPTER
	echo 'Compiling book...' >[1=2]
	rm -f $target
	for( i in `{seq $#CHAPTER} ){
		cat $i'.'?* >> $target
		if(test $i -ne $#CHAPTER )
			echo $CHAPTER_SEP >> $target
	}
	echo 'Done.' >[1=2]
$CHAPTER :N:
clean:V:
	rm -rf $TGT
