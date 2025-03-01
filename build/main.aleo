program auction_bidding01.aleo;

record Bid:
    owner as address.private;
    bidder as address.private;
    amount as u64.private;
    is_winner as boolean.private;

function place_bid:
    input r0 as address.private;
    input r1 as u64.private;
    assert.eq self.caller r0;
    gte r1 5000u64 into r2;
    assert.eq r2 true;
    cast aleo19wu36f724n6etu6tdux9qch63qh69tunyk2jtmx8ugtq996lw5qql33v9k r0 r1 false into r3 as Bid.record;
    output r3 as Bid.record;

function resolve:
    input r0 as Bid.record;
    input r1 as Bid.record;
    assert.eq self.caller aleo19wu36f724n6etu6tdux9qch63qh69tunyk2jtmx8ugtq996lw5qql33v9k;
    gte r0.amount r1.amount into r2;
    not r2 into r3;
    ternary r2 r0.owner r1.owner into r4;
    ternary r2 r0.bidder r1.bidder into r5;
    ternary r2 r0.amount r1.amount into r6;
    ternary r2 r0.is_winner r1.is_winner into r7;
    cast r4 r5 r6 r7 into r8 as Bid.record;
    output r8 as Bid.record;

function finish:
    input r0 as Bid.record;
    assert.eq self.caller aleo19wu36f724n6etu6tdux9qch63qh69tunyk2jtmx8ugtq996lw5qql33v9k;
    cast r0.bidder r0.bidder r0.amount true into r1 as Bid.record;
    output r1 as Bid.record;
