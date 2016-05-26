import "./SampleOffer.sol";

contract USNRewardPayOut {
     
     SampleOffer usnContract;
     
     function USNRewardPayOut(SampleOffer _usnContract) {
          usnContract = _usnContract;
     }
     
     // interface for USN
    function payOneTimeReward() returns(bool) {
        if (msg.value < usnContract.deploymentReward())
            throw;

          if (usnContract.originalClient().DAOrewardAccount().call.value(msg.value)()) {
            return true;
        } else {
            throw;
        }
    }

    // pay reward
    function payReward() returns(bool) {
          if (usnContract.originalClient().DAOrewardAccount().call.value(msg.value)()) {
            return true;
        } else {
            throw;
        }
    }
}