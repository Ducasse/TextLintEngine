Class {
	#name : 'TLContinuousWordRepetitionRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLContinuousWordRepetitionRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'test').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLContinuousWordRepetitionRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first = aWord.
	self assert: results first element words second = anotherWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLContinuousWordRepetitionRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'Test').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLContinuousWordRepetitionRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first = aWord.
	self assert: results first element words second = anotherWord.
	self assert: results first rule = aRule.


	
]

{ #category : 'test' }
TLContinuousWordRepetitionRuleTest >> testFailureManyWords [

	| aRule aDocument anotherWord aSentence words sentences aParagraph paragraphs results aWord |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'tes')).
	words add: (aWord := TLWord with: (PPToken on: 'test')).
	words add: (anotherWord := TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'xxxx')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLContinuousWordRepetitionRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first = aWord.
	self assert: results first element words second = anotherWord.
	self assert: results first rule = aRule.


	
]

{ #category : 'test' }
TLContinuousWordRepetitionRuleTest >> testFailureThreeInRow [

	| aRule aDocument aSentence words sentences aParagraph paragraphs results word1 word2 word3|

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'test')).
	words add: (word2 := TLWord with: (PPToken on: 'test')).
	words add: (word3 := TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'xxxx')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLContinuousWordRepetitionRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first = word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.
	
	self assert: results second isRuleFailure.
	self assert: results second element isPhrase.
	self assert: results second element words size = 2.
	self assert: results second element words first = word2.
	self assert: results second element words second = word3.
	self assert: results second rule = aRule.



	
]

{ #category : 'test' }
TLContinuousWordRepetitionRuleTest >> testSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	aWord := TLWord with: (PPToken on: 'test1').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLContinuousWordRepetitionRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLContinuousWordRepetitionRuleTest >> testSuccessWithNumbers [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	aWord := TLWord with: (PPToken on: '123').
	anotherWord := TLWord with: (PPToken on: '123').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLContinuousWordRepetitionRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
