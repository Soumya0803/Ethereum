pragma solidity ^ 0.4.0;

interface regulator{
    function checkValue(uint amount) returns (bool);
    function loan() returns (bool);
}
contract Bank{
    uint private value;
    address private owner;
    
    modifier ownerFunc{
        require(owner == msg .sender);
        _;   //ensures the ownerFunc is called before the function in which it is invoked
    }
    
    function Bank(uint amount){ // constructor
    value=amount;
    owner=msg.sender;// inside constructor as it is called only once for an instance
    
    }
    
    function deposit(uint amount) ownerFunc{ //ensures only owner can deposit(address should be of owner)
        value+=amount;
    }
    
     function withdraw(uint amount) ownerFunc {
        if (checkValue(amount)) {
            value -= amount;
        }
     }
        
    function balance() returns (uint) {
        return value;
    }
    function checkValue(uint amount) returns (bool) {
       
        return value >= amount;
    }
        function loan() returns (bool) {
        return value > 0;
    }
    
}

contract myFirstContract is Bank(10){// inheritance, 10 is used by the constructor of bank
    string private name;
    uint private age;
        function setName(string newName) {
        name = newName;
    }
    
    function getName() returns (string) {
        return name;
    }
    
    function setAge(uint newAge) {
        age = newAge;
    }
    
}
contract TestThrows { // error handling
    function testAssert() {// for validation genrerally usedafter som computation,uses all the gas
        assert(1 == 2);//returns boolean
    }
    
    function testRequire() {//uses all the gas
        require(2 == 1);  //returns boolean
    }
    
    function testRevert() {  //does not use gas 
        revert();
    }
    
    function testThrow() {// uses all the gas
        throw;
    }
}
