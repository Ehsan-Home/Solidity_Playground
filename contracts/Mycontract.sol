pragma solidity ^0.8.13;

contract MyContract {
    struct Car {
        string name;
        uint128 price;
    }

    uint numberOfCars = 0;
    mapping (uint => Car) public cars;
    address owner;
    uint openingTime;

    modifier onlyOwner() {
        require(owner == msg.sender , "Only owner can call this function");_;
    }

    modifier onlyWhileOpen {
        require(openingTime + 10 > block.timestamp, "time has passed");_;
    }

    constructor() {
        owner = msg.sender;
        openingTime = block.timestamp;
    }

    function addCar(string memory _name , uint128 _price) public onlyOwner onlyWhileOpen {
        cars[numberOfCars] = Car(_name , _price);
        incrementNumberOfCars();
    }

    function incrementNumberOfCars() internal {
        numberOfCars += 1;
    }

}