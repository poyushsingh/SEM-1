# Assignment-1 : Shell Programming 
## Software Systems Developments


### Assumptions:

### Solution 1:

# How to Execute :
	chmod +x q1.sh
	./q1.sh

# How it Works :
	1.Taken input from user as N.
	2.Checked for the base cases: if N equals to 0,1,2,3 or 4 then print 0, as no twin prime exits in the given N. 
	3.Also,I have created an isprime function which will tell where a number is prime or not and then find the twin prime of that number.
	4.Till now,we have found a twin prime pair and we can add 8 to the sum as digital root of any twin prime comes as 8 ,with one exception 												
	  for the pair (3,5) where digital root comes as 6.(That is why sum is initialized as 6.)     
	5.For larger value of N ,it will take some time to give output. 

# Output : 
	Twin prime pairs less than N and sum of their digital roots.   



### Solution 2:

# How to Execute :
	chmod +x q2.sh
	./q2.sh

# How it Works :
	1.Created 6 arrays of types
	  (a) Capital alphabets,Small alphabets,Number ,Special characters.
	  (b) Capital alphabets.
	  (c) Small alphabets.
	  (d) Number.
	  (e) Special characters.
	2.Selected a random element from the array (a) and appended it to answerpassword, as password cannot start with special symbol.
	3.Created a while loop which will select a random element from each and appended it to answerpassword. 
	4.Managed password size to be in between 6 to 20 by choosing a random number between (6,20) inclusive.
	5.Lastly checked if all conditions mentioned in the question are meet or not,if not meet then manipulate the answerpassword inorder to meet the conditions of question.

# Output :
	Printed a randomly generated string which staisfies all the conditions mentioned in the question. 
	


### Solution 3:

# How to Execute :
	chmod +x q3.sh
	./q3.sh

# How it Works :
	1.Taken input from user as N.
	2.Created 2 arrays ascarr(ascending array) and descarr(descending array) and inserted N,i.e converted input integer N as array of integers and then Sorted both of them in ascending and descending 				
	  order.
	3.calculated the differene and printed it untill Kaprekar's constant i.e. 6174 is not reached.  

# Assumptions :
	N will always be an integer of size 4 with atleast two different digits.

# output :
	Printed Kaprekar's routine on the same line with spaces between them.
	


### Solution 4:

# How to Execute :
	chmod +x q4.sh
	./q4.sh

# How it works :
	1.Taken input from user as N.
	2.I have created a maxdd function which will return the maximum number of days in a month ,also took care of leap year.
	3.Additionally,I have used "%02d" which will basically make the single digit date or month to double digit by appending 
	required zeros.

# Assumptions :
	N will always be an integer of size 4.

# output :
	If year has palindrome day then printed the date-month-year,
	else printed "No Palindrome days available in the given year"



### Solution 5:

# How to Execute :
	chmod +x q5.sh
	./q5.sh

# How it Works :
	1.Taken input from user as N.
	2.I have used Basic Calculator(bc) utlity because when input is large enough ,numbers starts to overflow 
	and gives wrong answer.
	3.Due to large number in output we were getting "\" seperated output.But,by using "BC_LINE_LENGTH=0" we have disabled that line wrapping.
	3.Assumptions: N will always be an integer with value >=0 .so,for negative numbers script gives output as 0.
	4.For larger value of N ,it will take some time to give output.

# Output : 
	Nth Lucas number.
	


