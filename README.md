# Aleo Auction Program

# Deployment 
## Deployment Information
- **Deployment ID**: `at1vl4ac7dak6620vnmp9a3nfaauv9su2rcd75js4azpsrenz9usqgsdc80a7`
- **Transaction ID**: `at1asph5gzfcv8e97825rpxvlrv4trn40s0stcm90sckuszm4nsmgpqrjs0av`
`
`
- **Deployment URL**: [View on Aleo Testnet](https://testnet.aleo.info/program/basic_bank.aleo)
- **Deployment Image**: ![Deployment Screenshot](https://i.ibb.co/DDkVK3Rp/auction.png)


![Program Snapshot](path_to_your_image.png)

This is an auction program built on the Aleo blockchain. It allows users to place bids, resolve the auction to determine the winner, and finalize the auction by assigning the winning bid.

## Overview

The program contains three key transitions:

- **`place_bid`**: Allows a bidder to place a bid in the auction.
- **`resolve`**: Resolves the auction by determining the winning bid.
- **`finish`**: Finalizes the auction by transferring ownership of the bid to the winning bidder.

## Structure

### Bid Record

A `Bid` record contains the following fields:

- **`owner`**: The address of the account that owns the bid record. This is the auction runner (the entity responsible for running the auction).
- **`bidder`**: The address of the account that placed the bid.
- **`amount`**: The amount of the bid placed.
- **`is_winner`**: Whether the bid is the winning bid.

```aleo
record Bid {
    owner: address,
    bidder: address,
    amount: u64,
    is_winner: bool,
}


<a href="https://ibb.co/bgLWdpKJ"><img src="https://i.ibb.co/DDkVK3Rp/auction.png" alt="auction" border="0"></a>

