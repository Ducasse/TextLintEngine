Class {
	#name : 'TLPhrasePatternRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testCommaWhitespaceBetweenWords [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWhitespace new).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLPhrasePatternRule 
				named: 'Avoid "So,Called"'
				rationale: 'rationale'
				matching: 'so, called'.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testCommaWhitespaceBetweenWordsFail [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLWhitespace new).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLPhrasePatternRule 
				named: 'Avoid "So,Called"'
				rationale: 'rationale'
				matching: 'so, called'.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 0

	
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testCreationDualWord [
	| aRule |
	aRule := TLPhrasePatternRule 
				named: 'test'
				rationale: 'rationale'
				matching: 'test1 test2'.
	
	self assert: aRule name = 'test'.
	self assert: aRule rationale = 'rationale'.
	self assert: ( aRule pattern isKindOf: PPFlattenParser ).
	self assert: ( aRule pattern children size = 1 ).
	self assert: ( ( aRule pattern children at: 1 ) isKindOf: PPSequenceParser ).
	self assert: ( ( aRule pattern children at: 1 ) children size = 3 ).
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testCreationDualWordAndPunctuation [
	| aRule |
	aRule := TLPhrasePatternRule
				named: 'test'
				rationale: 'rationale'
				matching: 'test1,test2'.
	
	self assert: aRule name = 'test'.
	self assert: aRule rationale = 'rationale'.
	self assert: ( aRule pattern isKindOf: PPFlattenParser ).
	self assert: ( aRule pattern children size = 1 ).
	self assert: ( ( aRule pattern children at: 1 ) isKindOf: PPSequenceParser ).
	self assert: ( ( aRule pattern children at: 1 ) children size = 3 ).
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testCreationSingleWord [
	| aRule |
	aRule := TLPhrasePatternRule 
				named: 'named' 
				rationale: 'rationale'
				matching: 'test'.
	
	self deny: aRule pattern isNil.
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testDualCommaBetweenWords [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLPhrasePatternRule 
				named: 'Avoid "So,Called"'
				rationale: 'rationale'
				matching: 'so,called'.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 0.


	
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testDualWithespaceBetweenWords [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLPhrasePatternRule 
				named: 'Avoid "So Called"'
				rationale: 'rationale'
				matching: 'so called'.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testSingleCommaBetweenWords [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLPhrasePatternRule 
				named: 'Avoid "So,Called"'
				rationale: 'rationale'
				matching: 'so,called'.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'as yet unclassified' }
TLPhrasePatternRuleTest >> testSoCalledFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLPhrasePatternRule 
				named: 'Avoid "So Called"'
				rationale: 'rationale'
				matching: 'so called'.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]
