---
layout: page
title: Projects
permalink: /projects/
---

Here are some projects that I have worked on below:

## <a name="pcfg"></a> Probabilistic Context-Free Grammer Tool

This is software written in C++ that can:
* read and write phoenix grammar files
* convert CFGs to Chomsky Normal Form
* train rule probabilities for CFGs
* compute n-grams for CFGs

[Download](http://www.cs.cmu.edu/~tkharris/pcfg/cfg2ngram-0.1.tgz)

The software is free, no warranty applies. Use at your own risk. Yada-yada...

It is no doubt quite buggy and poorly documented. Check back later or
email me for more information. The paper [Bi-grams Generated from
Phoenix Grammars and Sparse Data for the Universal Speech
Interface](http://www.cs.cmu.edu/~tkharris/pcfg/Project2.doc) (the
program now works for any n although it might take a millennia to
finish) and a Powerpoint
[presentation](http://www.cs.cmu.edu/~tkharris/pcfg/pcfg.ppt) will
provide some background.

## <a name="olympus"></a> Olympus Spoken Dialog Platform

Olympus is a research platform for spoken dialog systems. See the
[wiki](http://wiki.speech.cs.cmu.edu/olympus/index.php/Olympus) for
more information.

## <a name="code-trainer"></a> Tutor Technologies' Code Trainer

Tutor Technologies is a company that I created to build and market
intelligent tutoring systems in the programming tutoring domain. We
wrote an authoring system for intelligent tutoring instruction and
built a hint-based programming coach.

## <a name="dnn"></a> DNN

All of the above systems were real production systems. I have also
recently been studying Deep Neural Networks and have done some toy
projects in that domain. See some examples below:

### <a name="wprd-embeddings"></a> Word Embeddings

In a lot of applications you will use words as variables, but the
naive represenation of words have no structure - each word is
unrelated to every other word. There is only a (mostly useless)
arbitraty ordering of words based on the (also arbitrary) ordering of
the alphabet. So what you end up with is a very highly-dimentional
representaion wherein each of sometimes hundreds of thousands of words
is it's own dimention.

Classical grammatical constraints can be used to give that more
structure, so that for example one can represent "I" and "me" as being
related. But with these methods you still aren't representing the
semantic relationships, for example the relationship betweeen "King"
and "Queen". For that, you could make use of human-constructed
ontologies.

Here, however, we take a data-centric approach and use a deep neural
net to discover relationships between the contexts that words appear
in texts. We formalize the "context" in terms of skip-grams, and use
the neural network's back-propagation to iteratively improve local
estimates of word contexts.

See the Python code in a [jupyter notebook](Skip-Gram-word2vec.html)
