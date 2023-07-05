contract VotingApp {
    mapping(bytes32 => uint256) public votes;

    function vote(bytes32 candidate) external {
        votes[candidate] += 1;
    }

    function getVotes(bytes32 candidate) external view returns (uint256) {
        return votes[candidate];
    }
}
