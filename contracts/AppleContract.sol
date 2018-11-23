pragma solidity >=0.4.0 <0.6.0;
pragma experimental ABIEncoderV2;

contract AppleContract {

    Apple[] public apples;

    struct Apple {
        uint weight;
        string species;
    }

    function set(uint weight, string species) public {
        apples.push(Apple(weight, species));
    }

    function get() public view returns (Apple) {
        Apple memory acc;
        for (uint index = 0; index < apples.length; index++) {
            acc = apples[index];
        }
        return acc;
    }

}