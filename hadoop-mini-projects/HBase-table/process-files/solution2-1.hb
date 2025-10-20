create 'JobApplication', 'APPLICATION', 'APPLICANT', 'EMPLOYER', 'POSITION'

put 'JobApplication', 'applicant|001', 'APPLICANT:applicant-number', '001'
put 'JobApplication', 'applicant|001', 'APPLICANT:full-name', 'Helen Smith'
put 'JobApplication', 'applicant|001', 'APPLICANT:date-of-birth', '1990-05-15'

put 'JobApplication', 'applicant|002', 'APPLICANT:applicant-number', '002'
put 'JobApplication', 'applicant|002', 'APPLICANT:full-name', 'Kelly Hillmen'
put 'JobApplication', 'applicant|002', 'APPLICANT:date-of-birth', '1988-11-22'

put 'JobApplication', 'position|P001', 'POSITION:position-number', 'P001'
put 'JobApplication', 'position|P001', 'POSITION:title', 'Software Engineer'
put 'JobApplication', 'position|P001', 'POSITION:salary', '95000'

put 'JobApplication', 'position|P002', 'POSITION:position-number', 'P002'
put 'JobApplication', 'position|P002', 'POSITION:title', 'Data Scientist'
put 'JobApplication', 'position|P002', 'POSITION:salary', '85000'

put 'JobApplication', 'employer|Business Solutions', 'EMPLOYER:ename', 'Business Solutions'
put 'JobApplication', 'employer|Business Solutions', 'EMPLOYER:phone', '123456789'

put 'JobApplication', 'employer|Technology Smart', 'EMPLOYER:ename', 'Technology Smart'
put 'JobApplication', 'employer|Technology Smart', 'EMPLOYER:phone', '987654321'

put 'JobApplication', 'application|A001|001|Business Solutions|P001', 'APPLICATION:application-number', 'A001'
put 'JobApplication', 'application|A001|001|Business Solutions|P001', 'APPLICATION:total-skills', '5'
put 'JobApplication', 'application|A001|001|Business Solutions|P001', 'APPLICATION:education-level', 'Bachelors'
put 'JobApplication', 'application|A001|001|Business Solutions|P001', 'APPLICANT:applicant-number', '001'
put 'JobApplication', 'application|A001|001|Business Solutions|P001', 'EMPLOYER:ename', 'Business Solutions'
put 'JobApplication', 'application|A001|001|Business Solutions|P001', 'POSITION:position-number', 'P001'

put 'JobApplication', 'application|A002|002|Business Solutions|P002', 'APPLICATION:application-number', 'A002'
put 'JobApplication', 'application|A002|002|Business Solutions|P002', 'APPLICATION:total-skills', '7'
put 'JobApplication', 'application|A002|002|Business Solutions|P002', 'APPLICATION:education-level', 'Masters'
put 'JobApplication', 'application|A002|002|Business Solutions|P002', 'APPLICANT:applicant-number', '002'
put 'JobApplication', 'application|A002|002|Business Solutions|P002', 'EMPLOYER:ename', 'Business Solutions'
put 'JobApplication', 'application|A002|002|Business Solutions|P002', 'POSITION:position-number', 'P002'

put 'JobApplication', 'application|A003|001|Technology Smart|P001', 'APPLICATION:application-number', 'A002'
put 'JobApplication', 'application|A003|001|Technology Smart|P001', 'APPLICATION:total-skills', '6'
put 'JobApplication', 'application|A003|001|Technology Smart|P001', 'APPLICATION:education-level', 'PhD'
put 'JobApplication', 'application|A003|001|Technology Smart|P001', 'APPLICANT:applicant-number', '001'
put 'JobApplication', 'application|A003|001|Technology Smart|P001', 'EMPLOYER:ename', 'Technology Smart'
put 'JobApplication', 'application|A003|001|Technology Smart|P001', 'POSITION:position-number', 'P001'

describe 'JobApplication'

scan 'JobApplication'
