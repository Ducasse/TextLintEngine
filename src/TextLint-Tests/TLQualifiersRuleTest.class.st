Class {
	#name : 'TLQualifiersRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLQualifiersRuleTest >> testCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'Rather').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLQualifiersRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLQualifiersRuleTest >> testLittleFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'little').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLQualifiersRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLQualifiersRuleTest >> testPrettyFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'pretty').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLQualifiersRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLQualifiersRuleTest >> testQuiteFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'quite').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLQualifiersRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLQualifiersRuleTest >> testRatherFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'rather').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLQualifiersRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.
]

{ #category : 'test' }
TLQualifiersRuleTest >> testReallyFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'really').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLQualifiersRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLQualifiersRuleTest >> testSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	aWord := TLWord with: (PPToken on: 'test').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLQualifiersRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLQualifiersRuleTest >> testVeryFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'very').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLQualifiersRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.
	
]
