pragma solidity >0.8.18;
//step 1: create the contract name 
contract Proposalcontract{

//step2 : create a structure that will store the proposal/feedbacks
struct Proposal{

    string description;// decsription of the proposal
    int vote; //number of vote
    uint256 approve; // Number of approve votes
    uint256 reject; // Number of reject votes
    uint256 pass; // Number of pass votes
    uint256 total_vote_to_end; // When the total votes in the proposal reaches this limit, proposal ends
    bool current_state; // This shows the current state of the proposal, meaning whether if passes or fails
    bool is_active; // This shows if others can vote to our contract
    // task1 add a title of type string 
    string title;// a tilr for the proposal
}

//step 3: use mapping to store all this feedbacks since its a key- value pair
// uint256(key uint256 value, which will be the id of the proposal.) as the key and the proposal as the value
mapping  (uint256 => Proposal) proposal_history; // Recordings of previous proposals

}