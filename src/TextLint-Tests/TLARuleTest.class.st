Class {
	#name : 'TLARuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLARuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'ot')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailureA [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'AT')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailureE [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'ET')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailureI [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'IT')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailureO [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'OT')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailureU [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'UT')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailurea [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'at')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailuree [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'et')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailurei [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'it')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailureo [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'ot')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testFailureu [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'ut')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLARuleTest >> testOne [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'one')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUS [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'US')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUnified [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'unified')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUniform [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'uniform')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUnifying [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'unifying')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUnion [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'union')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUnique [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'unique')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUnit [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'unit')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUnited [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'united')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUniversal [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'universal')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUsage [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'usage')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUseful [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'useful')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLARuleTest >> testUser [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'user')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLARule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]
