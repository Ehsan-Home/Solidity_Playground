pragma solidity ^0.8.7;

contract MyContract {
    mapping (address => uint) balances;
    address payable public wallet;

    constructor(address payable _wallet) {
        wallet = _wallet;
    }

    // external : unlike public, external only can be used outside of the contract,  
    fallback() external payable {
        buyToken();
    }

    function saySomething() public returns(string memory) {
        return "I said STH!";
    }

    function buyToken() public payable {
        // balances[msg.sender] += 1;
        // msg.sender => wallet (msg.value amount)
        // wallet.transfer = wallet.deposit
        wallet.transfer(msg.value);
    }

}