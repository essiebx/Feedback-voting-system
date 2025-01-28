pragma solidity >0.8.18;
//step 1: create the contract name 
contract Proposalcontract{

//step2 : create a structure that will store the proposal/feedbacks
struct Proposal{
// step4 : added a state variable (nb: state variable mantain persistent state of the smart contract
uint256 private counter;
// end of step4
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

// step5: create a function ehich will create a proposal
// our  function takes two parameters; one to describe the proposal and second is set the total number of votes to end the proposal.
                            // task2 : update the create function to  take  in title as another parameter
also take title as a parameter 
function create(string calldata _description, uint256 _total_vote_to_end, string title) external
// calldata keyword in Solidity function parameters to pass large, complex data types like arrays, structs and
//  sometimes strings more efficiently by storing them in immutable call data rather than temporary memory.
 {
     counter+=1; //increment our counter so that we can update the counter before creating a new proposal entry in our mapping
     proposal_history[counter]=Proposal(_description, 0,0,0, total_vote_to_end,title,false, true); //create and add a new Proposal  to our proposal_history  mapping.
}
}