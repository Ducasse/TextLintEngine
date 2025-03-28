Class {
	#name : 'TLClichesRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLClichesRuleTest >> testAllThingsBeingEqualFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'all')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'things')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'being')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'equal')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words last = word4.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testAllThingsConsideredAsFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'all')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'things')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'considered')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'as')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testAsAMatterOfFactFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'as')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'matter')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'of')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'fact')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testAsFarAsIAmConcernedFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5 word6|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'as')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'far')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'as')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'I')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'am')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'concerned')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first element words sixth = word6.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testAtTheEndOfTheDayFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5 word6|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'at')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'end')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'of')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'day')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first element words sixth = word6.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testAtThePresentTimeFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'at')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'present')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'time')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testDueToTheFactThatFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'due')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'to')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'fact')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testForAllIntentsAndPurposesFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'for')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'all')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'intents')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'and')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'purposes')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testForTheMostPartFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'for')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'most')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'part')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testForThePurposeOfFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'for')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'purpose')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'of')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testInAMannerOfSpeakingFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'manner')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'of')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'speaking')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testInMyOpinionFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'my')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'opinion')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'of')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'speaking')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testInTheEventOfFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'event')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'of')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testInTheFinalAnalysisFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'final')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'analysis')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testItSeemsThatFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'it')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'seems')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'analysis')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5 word6|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'what')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'I')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'want')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'to')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'make')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'g')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty

	
]

{ #category : 'test' }
TLClichesRuleTest >> testThePointThatIAmTryingToMakeFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5 word6 word7 word8 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'point')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'I')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'am')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'trying')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word7 := TLWord with: (PPToken on: 'to')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word8 := TLWord with: (PPToken on: 'make')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first element words sixth = word6.
	self assert: results first element words seventh = word7.
	self assert: results first element words eighth = word8.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testTypeOfFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'type')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'of')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'analysis')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testWhatIAmTryingToSayFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5 word6|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'what')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'I')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'am')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'trying')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'to')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'say')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first element words sixth = word6.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLClichesRuleTest >> testWhatIWantToMakeClearFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 word5 word6|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'what')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'I')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'want')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'to')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'make')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'clear')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLClichesRule  new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	self assert: results first element words fifth = word5.
	self assert: results first element words sixth = word6.
	self assert: results first rule = aRule.

	
]
