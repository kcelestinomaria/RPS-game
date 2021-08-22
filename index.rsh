'reach 0.1';

const [ isHand, ROCK, PAPER, SCISSORS ] = makeEnum(3);
const [ isOutcome, B_WINS, DRAW, A_WINS ] = makeEnum(3);


const winner = (handA, handB) =>
  ((handA + (4 - handB)) % 3);
  assert(winner(ROCK, PAPER) == B_WINS);
  assert(winner(PAPER, ROCK) == A_WINS);
  assert(winner(ROCK, ROCK) == DRAW);

  forall(UInt, handA =>
    forall(UInt, handB =>
      assert(isOutcome(winner(handA, handB)))));

  forall(UInt, (hand) =>
    assert(winner(hand, hand) == DRAW));

  const Player = {
    ...hasRandom, // <--- new!
    getHand: Fun([], UInt),
    seeOutcome: Fun([UInt], Null),
  };







