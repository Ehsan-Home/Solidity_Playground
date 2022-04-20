pragma solidity ^0.8.13;

contract MyContract {
    struct Car {
        string name;
        uint128 price;
    }

    uint numberOfCars = 0;
    mapping (uint => Car) public cars;
    address owner;

    modifier onlyOwner() {
        require(owner == msg.sender , "Only owner can call this function");_;
    }

    constructor() {
        owner = msg.sender;
    }

    function addCar(string memory _name , uint128 _price) public onlyOwner {
        cars[numberOfCars] = Car(_name , _price);
        incrementNumberOfCars();
    }

    function incrementNumberOfCars() internal {
        numberOfCars += 1;
    }

}