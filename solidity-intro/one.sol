//one.sol
pragma solidity 0.8.1;


contract counter {
    uint public count = 0;
    
    function incrementCount() public {
        count++;
    }
}