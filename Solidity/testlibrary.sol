pragma solidity ^0.4.0;

import "browser/library.sol" ;//full path

 contract TestLibrary{
     using IntExtended for uint;// can use * it will include strings as well
     uint r;
     function get()  constant public returns (uint)
     {
         return r;
     }
     function testIncrement(uint base) returns (uint)
     {
         r= base.increment();//method 1
         // r= IntExtended.increment(base)   method 2
       
     }
      function testDecrement(uint base) returns (uint) {
        r= IntExtended.decrement(base);
    }
    
    function testIncrementByValue(uint base, uint value) returns (uint) {
        r=base.incrementByValue(value);
    }
    
    function testDecrementByValue(uint base, uint value) constant returns (uint) {
      return base.decrementByValue(value);
    }
     
 }
