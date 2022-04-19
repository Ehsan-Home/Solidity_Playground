pragma solidity ^0.8.13;

contract MyContract {
    enum State {Waiting , InProgress, Ready}
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function updateState() public {
        state = State.InProgress;
    }

    function setReady() public {
        state = State.Ready;
    }

    function isReady() public view returns(bool) {
        if (state == State.Ready) {
            return true;
        }
        return false;
    }

}