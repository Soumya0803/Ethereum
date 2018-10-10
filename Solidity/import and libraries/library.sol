pragma solidity ^0.4.0;

library IntExtended {
    function increment(uint self) returns (uint)
    {
        return self+1;
    }
       
       function decrement(uint self) returns (uint)
    {
        return self-1;
    }
     function incrementByValue(uint self, uint value) returns (uint)
     {
         return self+value;
     }
      function decrementByValue(uint self, uint value) returns (uint)
     {
         return self-value;
     }
}
