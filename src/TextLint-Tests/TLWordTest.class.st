Class {
	#name : 'TLWordTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLWordTest >> testClassifyAs0 [
	| word |
	word := TLWord with: (PPToken on: 'n00b').
	self deny: (word classifiesAs: #noun).
	self deny: (word classifiesAs: #pronoun)
]

{ #category : 'test' }
TLWordTest >> testClassifyAs1 [
	| word |
	word := TLWord with: (PPToken on: 'excess').
	self assert: (word classifiesAs: #noun).
	self deny: (word classifiesAs: #pronoun)
]

{ #category : 'test' }
TLWordTest >> testClassifyAs2 [
	| word |
	word := TLWord with: (PPToken on: 'its').	
	self deny: (word classifiesAs: #adjective).
	self deny: (word classifiesAs: #pronoun).
	self deny: (word classifiesAs: #number)
]

{ #category : 'test' }
TLWordTest >> testClassifyAsWithCertainty [
	| word |
	word := TLWord with: (PPToken on: 'its') .
	self assert: (word classifiesAs: #adjective withCertainty: 0.4).
	self deny: (word classifiesAs: #adjective withCertainty: 0.6).
	self assert: (word classifiesAs: #pronoun withCertainty: 0.4).
	self deny: (word classifiesAs: #pronoun withCertainty: 0.6).
	self deny: (word classifiesAs: #number withCertainty: 0.4).
	self deny: (word classifiesAs: #number withCertainty: 0.6)
]

{ #category : 'test' }
TLWordTest >> testCreation [

	| aWord |

	aWord := TLWord with: 1.
	
	self assert: aWord token = 1
]

{ #category : 'test' }
TLWordTest >> testInterval [

	| aWord |

	aWord := TLWord with: (PPToken on: '1' start: 1 stop: 1) .
	
	self assert: aWord interval size = 1
]

{ #category : 'test' }
TLWordTest >> testIsWord [

	| aWord |

	aWord := TLWord with: 1.

	self assert: aWord isWord.
	self assert: aWord isSyntacticElement.
	self deny: aWord isParagraph.
	self deny: aWord isDocument.
	self deny: aWord isSentence.
	self deny: aWord isPunctuation.
	self deny: aWord isEndOfDocument.
	self deny: aWord isWhitespace.
	self deny: aWord isPhrase.
]

{ #category : 'test' }
TLWordTest >> testText [

	| aWord |

	aWord := TLWord with: (PPToken on: '1') .
	
	self assert: aWord text = '1'
]
