pragma solidity ^0.8.13;

contract MyContract {
    string public constant name = "Ehsan";


    function getName() public pure returns(string memory) {
        return name;
    }

}