Class {
	#name : 'TLAnRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLAnRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'An')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 't')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureA [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.


	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureE [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureI [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureMarkup [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 |
	
	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'An')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 't')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureO [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureU [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailurea [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailuree [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailurei [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureo [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testFailureu [

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
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.

	
]

{ #category : 'test' }
TLAnRuleTest >> testHonest [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'honest')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLAnRuleTest >> testHonorable [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'honorable')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLAnRuleTest >> testHour [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'hour')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLAnRuleTest >> testHtml [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'html')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLAnRuleTest >> testHttp [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'http')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLAnRuleTest >> testHybrid [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'hybrid')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLAnRuleTest >> testSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'est')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLAnRuleTest >> testXML [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'an')).
	words add: (TLWhitespace new).
	words add: (TLWord with: (PPToken on: 'xml')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAnRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]
