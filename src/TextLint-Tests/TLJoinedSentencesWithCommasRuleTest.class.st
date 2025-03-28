Class {
	#name : 'TLJoinedSentencesWithCommasRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
		words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
		words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
		words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (word3 := TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLJoinedSentencesWithCommasRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element = aSentence.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessAnd [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'and')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessAs [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'as')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessBeacause [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'because')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessBut [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'but')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessHowever [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'however')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessNotEnoughWordAfterComma [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (word3 := TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLJoinedSentencesWithCommasRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty

	
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessNotEnoughWordBeforeComma [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (word1 := TLWord with: (PPToken on: 'The')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLJoinedSentencesWithCommasRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty

	
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessSince [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'since')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessStill [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'still')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessThough [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'though')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessWithComma [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word2 := TLWord with: (PPToken on: 'truth')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWhitespace with: (PPToken on: ' ')).

	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLJoinedSentencesWithCommasRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.
	

	
]

{ #category : 'test' }
TLJoinedSentencesWithCommasRuleTest >> testSuccessYet [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (TLWord with: (PPToken on: 'yet')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLJoinedSentencesWithCommasRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
