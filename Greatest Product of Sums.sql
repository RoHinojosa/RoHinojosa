

/*
Prompt: Take an integer and find the greatest product of its sums

Example:
n = 6: 3 * 3 = 9
n = 16: 3 * 3 * 3 * 3 * 2 * 2 = 324
n = 17: 3 * 3 * 3 * 3 * 3 * 2 = 486

*/

Declare @N int
Declare @remainder int
Declare @3s int

set @N = 4
set @remainder = @N % 3
set @3s = @N / 3

select case when @remainder = 0 then power(3,@3s)
	when @remainder = 2 then power(3,@3s) * 2
	when @remainder = 1 and (power(3,@3s) > power(3,@3s - 1) * 4) then power(3,@3s) 
	else power(3,@3s - 1) * 4 
	end
