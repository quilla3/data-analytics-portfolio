# (i)
scan 'task2-2', {COLUMNS=>['SUBJECT:code', 'FILES:fnumber1', 'FILES:fnumber2']}

# (ii)
get 'task2-2', 'subject|312', {COLUMN=>'SUBJECT', VERSIONS=>2}

# (iii)
get 'task2-2', 'submission|007|312|assignment|1', {COLUMN=>'SUBMISSION', VERSIONS=>1}

# (iv)
put 'task2-2', 'submission|007|312|assignment|1', 'SUBMISSION:sdate', '02-APR-2019'
get 'task2-2', 'submission|007|312|assignment|1', {COLUMN=>'SUBMISSION'}

# (v)
alter 'task2-2', {NAME=>'DEGREE', VERSIONS=>'1'}
put 'task2-2', 'student|007', 'DEGREE:title', 'Master of Computer Science'
get 'task2-2', 'student|007'
