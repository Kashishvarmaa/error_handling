//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract solidity_err_handling{
    uint256 public j;
    uint256 public k;
    constructor (){
       j=56;
       k=19;
    }
    
    function double()public view returns(uint){
        require(k*2==j,"Double of k should be equal to j");
        return k*2;
    }

    function sum(uint t)public view{
        if(j+k+t>100){
            revert("The sum should be less than 100");
        }
    }

    function div(uint256 q, uint256 z)public view returns(uint){
        assert((q+k)/(j-z)>400);
        return (q+k)/(j-z);
    } 
}
