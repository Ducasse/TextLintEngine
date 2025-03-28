Class {
	#name : 'TLPatternTokenizer',
	#superclass : 'TLTextTokenizer',
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'grammar' }
TLPatternTokenizer >> elementList [
	"We need at least one term, otherwise we would match anything."
	
	^ element plus foldLeft: [ :a :b | a , b ]
]

{ #category : 'token' }
TLPatternTokenizer >> markup [
	^ ${ asParser , #word asParser plus token , $} asParser map: [ :open :token :close |
		| type |
		type := token value asSymbol.
		(TLWordClassifier types includes: type)
			ifFalse: [ PPFailure message: 'Invalid word type: ' , token value at: token start ]
			ifTrue: [
				PPPredicateObjectParser
					on: [ :each | each isWord and: [ each classification includes: type ] ]
					message: token value , ' expected' ] ]
]

{ #category : 'token' }
TLPatternTokenizer >> punctuation [
	^ super punctuation ==> [ :token | 
		PPPredicateObjectParser
			on: [ :each | each isPunctuation and: [ each text = token value ] ]
			message: token value printString , ' expected' ]
]

{ #category : 'token' }
TLPatternTokenizer >> punctuationCharacters [
	"Remove the open and close curly-braces."
	
	^ PPPredicateObjectParser chars: '''"[]():,-!.?;/&@' message: 'Punctuation expected'
]

{ #category : 'accessing' }
TLPatternTokenizer >> start [
	^ super start ==> [ :node | node flatten ]
]

{ #category : 'token' }
TLPatternTokenizer >> unknown [
	^ PPFailingParser message: 'Invalid query character'
]

{ #category : 'token' }
TLPatternTokenizer >> whitespace [
	^ super whitespace ==> [ :token | 
		(PPPredicateObjectParser
			on: [ :each | each isWhitespace or: [ each isMarkup ] ]
			message: 'whitespace expected') star ]
]

{ #category : 'token' }
TLPatternTokenizer >> word [
	^ super word ==> [ :token | 
		PPPredicateObjectParser
			on: [ :each | each isWord and: [ each text sameAs: token value ] ]
			message: token value printString , ' expected' ]
]
