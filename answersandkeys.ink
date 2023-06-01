VAR key1=1
VAR key2=1
VAR key3=1
VAR keyCnt=3
VAR qs=3
->start
==start==
{qs: You have {keyCnt} keys left.}
{qs:Answer}

{ qs:
- 0:  You won! You can live forever now with your amazing knowledge. What will you do? ->END
- 1: <>	just one more <>
- 2: <>	two more <>
- 3: <> three <>
}

 questions and gain immortality, which will you answer first?
*First question[?]: ->q1
*Second question[?]: ->q2
*Third question[?]: ->q3

==q1==
What is green and sounds like a fart when squeezed?
*[I know the answer] ->answers.a1
*[I give up, use a key] 
    Which key to use? Hmm...
    **{key1}[key1] 
        ->keys.k1->answers.a1
    **{key2}[key2]
        ->keys.k2->answers.a1
    **{key3}[key3]
        ->keys.k3->answers.a1

==q2==
What is red and juicy, and not a vegetable?
*[I know the answer] ->answers.a2
*[I give up, use a key] 
        Which key to use? Hmm...
    **{key1}[key1] 
        ->keys.k1->answers.a2
    **{key2}[key2]
        ->keys.k2->answers.a2
    **{key3}[key3]
        ->keys.k3->answers.a2

==q3
What is black but is incredibly bright?
*[I know the answer] ->answers.a3
*[I give up, use a key] 
        Which key to use? Hmm...
    **{key1}[key1] 
        ->keys.k1->answers.a3
    **{key2}[key2]
        ->keys.k2->answers.a3
    **{key3}[key3]
        ->keys.k3->answers.a3
        
==keys==
=k1
~key1--
~keyCnt--
Key1 breaks into 2 neat little pieces.
And what did it buy me?

->->

=k2
~key2--
~keyCnt--
Key2 dissolves into a pile of dust.
And the answer?
->->
->END

=k3
~key3--
~keyCnt--
Key3 bursts into flames!
The answer is...?
->->

==answers==
=a1
A frog! Too easy. 
~qs--
->start

=a2
A tomato. Pfft, try harder.

~qs--
->start
=a3
A black hole. I think, I don't know, I'm not a rocket surgeon.
~qs--
->start



    -> END
