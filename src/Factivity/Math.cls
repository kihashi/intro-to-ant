
/*------------------------------------------------------------------------
   File        : Math
   Purpose     : Provides a set of math functions.
   Syntax      :
   Description :
   Author(s)   : jcleaver
   Created     : Mon Jun 05 08:32:18 EDT 2017
   Notes       :
 ----------------------------------------------------------------------*/

using Progress.Lang.*.

block-level on error undo, throw.

class Factivity.Math:

    /*------------------------------------------------------------------------------
     Purpose: Adds two integer numbers.
     Notes: Results with decimal inputs are unpredicatble.
    ------------------------------------------------------------------------------*/
    method public static integer Add(num1 as integer, num2 as integer):
        return num1 + num2.
    end method.

    /*------------------------------------------------------------------------------
     Purpose: Divides 2 integer numbers.
     Notes: Returns a decimal.
     Throws AppError if the divisor is 0.
    ------------------------------------------------------------------------------*/

    method public static decimal Divide(num1 as integer, num2 as integer  ):
        if num2 = 0 then
            undo, throw new Progress.Lang.AppError("Dividing by zero is unsupported.", 1).

        return num1 / num2.
    end method.

    /*------------------------------------------------------------------------------
     Purpose: Multiplies two integer numbers.
     Notes:
    ------------------------------------------------------------------------------*/

    method public static integer Multiply(num1 as integer, num2 as integer):
        return num1 * num2.
    end method.

    /*------------------------------------------------------------------------------
     Purpose: Subtracts two integer numbers.
     Notes: Results with decimal inputs are unpredictable.
    ------------------------------------------------------------------------------*/
    method public static integer Subtract(num1 as integer, num2 as integer):
        return num1 - num2.
    end method.



end class.
