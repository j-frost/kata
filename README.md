# kata
A place for stuff that happens when I kata

## String Calculator

After writing some tests and honing on the `StringCalculator` class, I realized
I was incentivized to automate some of the example generation because one had
to first instantiate the object with the source string and then call the `#add`
method to actually perform the calculation. 

Because of this, I instead decided to implement a `String#calc_sum` method as a
semi monkey patch, abandoning `StringCalculator`. This proved simpler, but it
remains unclear at this moment whether extending `String` in this fashion should
be considered dangerous. 