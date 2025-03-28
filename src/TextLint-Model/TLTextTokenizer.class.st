Class {
	#name : 'TLTextTokenizer',
	#superclass : 'TLCachedParser',
	#instVars : [
		'elementList',
		'element',
		'markup',
		'word',
		'whitespace',
		'punctuation',
		'punctuationGroups',
		'unknown',
		'punctuationCharacters'
	],
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'grammar' }
TLTextTokenizer >> element [
	^ markup / word / whitespace / punctuation / unknown
]

{ #category : 'grammar' }
TLTextTokenizer >> elementList [
	^ element star
]

{ #category : 'tokens' }
TLTextTokenizer >> markup [
	^ PPFailingParser message: 'Markup expected'
]

{ #category : 'tokens' }
TLTextTokenizer >> punctuation [
	^ (punctuationGroups / punctuationCharacters) token
]

{ #category : 'tokens' }
TLTextTokenizer >> punctuationCharacters [
	^ PPPredicateObjectParser chars: '''"[](){}:,-!.?;/&@' message: 'Punctuation expected'
]

{ #category : 'tokens' }
TLTextTokenizer >> punctuationGroups [
	^ '...' asParser
]

{ #category : 'accessing' }
TLTextTokenizer >> start [
	^ elementList end
]

{ #category : 'tokens' }
TLTextTokenizer >> unknown [
	^ #any asParser token
]

{ #category : 'tokens' }
TLTextTokenizer >> whitespace [
	^ #space asParser plus token
]

{ #category : 'tokens' }
TLTextTokenizer >> word [
	^ #word asParser plus token
]
