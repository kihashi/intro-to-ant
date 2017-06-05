
/*------------------------------------------------------------------------
   File        : TestMath
   Purpose     : Units Tests for the Factivity Math Module.
   Syntax      :
   Description :
   Author(s)   : jcleaver
   Created     : Mon Jun 05 09:11:31 EDT 2017
   Notes       :
 ----------------------------------------------------------------------*/

using Progress.Lang.*.
using OpenEdge.Core.Assert from propath.
using Factivity.Math from propath.
using OpenEdge.Core.Assertion.AssertError from propath.

block-level on error undo, throw.

class Factivity.TestMath:


    /*------------------------------------------------------------------------------
      Purpose: Tests adding 2 numbers.
      Notes:
    ------------------------------------------------------------------------------*/
    @Test.
    method public void testAdd():
        Assert:Equals(Math:Add(2, 2), 4).
    end method.


    /*------------------------------------------------------------------------------
      Purpose: Tests Divide() with a normal input.
      Notes:
     ------------------------------------------------------------------------------*/
    @Test.
    method public void testDivide():
        Assert:Equals(Math:Divide(10, 5), 2).
    end method.

    /*---------------------------------------------------------
      Purpose: Tests that Divide() will throw an exception
               rather than divide by 0.
      Notes:
    -----------------------------------------------------------*/
    @Test (expected="Progress.Lang.AppError").
    method public void testDivideByZero():
       Math:Divide(1, 0).
    end method.

    /*------------------------------------------------------------------------------
      Purpose: Tests multiply with normal inputs.
      Notes:
     ------------------------------------------------------------------------------*/
    @Test.
    method public void testMultiply():
        Assert:Equals(Math:Multiply(10, 10), 100).
    end method.


    /*------------------------------------------------------------------------------
      Purpose: Tests Subtract() with normal inputs.
      Notes:
     ------------------------------------------------------------------------------*/
    @Test.
    method public void testSubtract():
        Assert:Equals(Math:Subtract(100, 50), 50).
    end method.

end class.
