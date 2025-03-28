Class {
	#name : 'TLPlainTokenizer',
	#superclass : 'TLTextTokenizer',
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'testing' }
TLPlainTokenizer class >> canTokenize: aString [
	"Answer true if the receiving class can easily tokenize aString."
	
	^ self name = #TLPlainTokenizer
]

{ #category : 'finding' }
TLPlainTokenizer class >> find: aString [
	"Finds an appropriate tokenizer for aString."
	
	^ (self allSubclasses
		detect: [ :class | class canTokenize: aString ]
		ifNone: [ self ])
			new
]

{ #category : 'accessing' }
TLPlainTokenizer >> elementList [
	^ super elementList ==> [ :nodes | nodes copyWith: (TLTerminatorMark with: '') ]
]

{ #category : 'accessing' }
TLPlainTokenizer >> punctuation [
	^ super punctuation ==> [ :node | TLPunctuationMark with: node ]
]

{ #category : 'accessing' }
TLPlainTokenizer >> unknown [
	^ super unknown ==> [ :token | TLMarkup with: token ]
]

{ #category : 'accessing' }
TLPlainTokenizer >> whitespace [
	^ super whitespace ==> [ :node | TLWhitespace with: node ]
]

{ #category : 'accessing' }
TLPlainTokenizer >> word [
	^ super word ==> [ :node | TLWord with: node ]
]
