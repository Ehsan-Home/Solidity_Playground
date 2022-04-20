pragma solidity ^0.8.13;

contract MyContract {
    mapping (address => uint) balances;
    address payable public wallet;

    constructor(address payable _wallet) {
        wallet = _wallet;
    }

    fallback() external payable {
        buyToken();
    }

    function buyToken() public payable {
        // balances[msg.sender] += 1;
        // msg.sender => wallet (msg.value amount)
        // wallet.transfer = wallet.deposit
        wallet.transfer(msg.value);
    }

}