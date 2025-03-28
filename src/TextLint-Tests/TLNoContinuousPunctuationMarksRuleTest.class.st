Class {
	#name : 'TLNoContinuousPunctuationMarksRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testFailureWithComma [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: ( TLWord with: (PPToken on: 'order')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoContinuousPunctuationMarksRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element children first = word1.
	self assert: results first element children last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testFailureWithExcalmation [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: ( TLWord with: (PPToken on: 'order')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLPunctuationMark with: (PPToken on: '!')).
	words add: (word2 := TLPunctuationMark with: (PPToken on: '!')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoContinuousPunctuationMarksRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element children first = word1.
	self assert: results first element children last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testFailureWithMixed [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: ( TLWord with: (PPToken on: 'order')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLPunctuationMark with: (PPToken on: '.')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoContinuousPunctuationMarksRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element children first = word1.
	self assert: results first element children last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testFailureWithMixedPeriod [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: ( TLWord with: (PPToken on: 'order')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLPunctuationMark with: (PPToken on: '!')).
	words add: (word2 := TLPunctuationMark with: (PPToken on: '.')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoContinuousPunctuationMarksRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
		self assert: results first element isPhrase.
	self assert: results first element children first = word1.
	self assert: results first element children last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testFailureWithPeriod [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: ( TLWord with: (PPToken on: 'order')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLPunctuationMark with: (PPToken on: '.')).
	words add: (word2 := TLPunctuationMark with: (PPToken on: '.')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoContinuousPunctuationMarksRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element children first = word1.
	self assert: results first element children last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testFailureWithQuestion [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: ( TLWord with: (PPToken on: 'order')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLPunctuationMark with: (PPToken on: '?')).
	words add: (word2 := TLPunctuationMark with: (PPToken on: '?')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoContinuousPunctuationMarksRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element children first = word1.
	self assert: results first element children last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'order')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLNoContinuousPunctuationMarksRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLNoContinuousPunctuationMarksRuleTest >> testSuccessWithPunctuationMarks [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLPunctuationMark with: (PPToken on: '"')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'order')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLNoContinuousPunctuationMarksRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
