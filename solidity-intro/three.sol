pragma solidity 0.8.1;

contract arrays {
    
    uint[] public uintArray = [1,2,3];
    string[] public strArray = ["rohith" , "honey"];
    string[] public values;
    uint[][] public twoDArray = [ [1,2,3] , [4,5,6] ];
    
    function addValue(string memory _value) public {
        values.push(_value);
    }
    
}