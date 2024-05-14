// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wave(range, rate)
{
	return (sin(current_time/100* rate)* range)
}

function add_and_wrap(number, adjustment, minimum, maximum)
{
    var raw_output = number + adjustment
    if (raw_output >= minimum and raw_output <= maximum)
    return raw_output
    var difference = 0
    if (raw_output > maximum)
    {
        difference = raw_output - maximum
        number = minimum - 1
    }
    if (raw_output < minimum)
    {
        difference = raw_output - minimum
        number = maximum + 1
    }
    number = add_and_wrap(number, difference, minimum, maximum)
    return number;
}