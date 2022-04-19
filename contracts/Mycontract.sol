pragma solidity ^0.4.24;

contract MyContract {
    string name;

    constructor() public {
        name = "Ehsan";
    }

    function getName() public view returns(string) {
        return name;
    }

    function setName(string inputName) public {
        name = inputName;
    }
}