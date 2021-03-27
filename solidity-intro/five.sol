pragma solidity 0.8.1;

contract conditionals {
    
    uint[] arr = [1,2,3,4,5,6,7];
    
    function noOfodds() public view returns(uint){
        
        uint count = 0;
        
        for(uint i=0; i<arr.length ; i++){
            if(arr[i] % 2 !=0){
                count++;
            }
        }
        
        return count;
    }
    
    function isEven(uint _num) public view returns(bool){
        if(_num % 2 == 0){
            return true;
        }
        else{
            return false;
        }
    }
}