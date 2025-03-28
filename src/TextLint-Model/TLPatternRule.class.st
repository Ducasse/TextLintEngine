Class {
	#name : 'TLPatternRule',
	#superclass : 'TLTextLintRule',
	#instVars : [
		'pattern'
	],
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'factory' }
TLPatternRule >> anchorBegin [
	^ [ :stream | stream position = 0 ifFalse: [ PPFailure message: 'begin of input expected' at: stream position ] ] asParser
]

{ #category : 'factory' }
TLPatternRule >> markup [
	^ PPPredicateObjectParser
		on: [ :element | element isMarkup ]
		message: 'markup expected'
]

{ #category : 'accessing' }
TLPatternRule >> matchingPattern [
	"Override in subclasses to answer a custom pattern parser."
	
	^ TLPatternTokenizer parse: self matchingString
]

{ #category : 'accessing' }
TLPatternRule >> matchingString [
	"Override in subclasses to answer a string pattern."
	
	self error: 'Override #matchingPattern or #matchingString in subclasses to provide pattern.'
]

{ #category : 'private' }
TLPatternRule >> newPattern [
	| result |
	result := self matchingPattern.
	result class = PPFlattenParser
		ifFalse: [ result := result flatten ].
	^ result 
]

{ #category : 'accessing' }
TLPatternRule >> pattern [
	"Answer the lazily initialized pattern. Do not override in subclasses."

	^ pattern ifNil: [ pattern := self newPattern ]
]

{ #category : 'factory' }
TLPatternRule >> punctuation [
	^ PPPredicateObjectParser 
		on: [ :element | element isPunctuation ]
		message: 'punctuation expected'
]

{ #category : 'factory' }
TLPatternRule >> punctuation: aString [
	^ PPPredicateObjectParser
		on: [ :element | element isPunctuation and: [ element text = aString ] ]
		message: 'punctuation expected'
]

{ #category : 'factory' }
TLPatternRule >> punctuationIn: aCollection [
	^ PPPredicateObjectParser
		on: [ :element | element isPunctuation and: [ aCollection anySatisfy: [ :each | element text sameAs: each ] ] ]
		message: 'punctuation expected'
]

{ #category : 'factory' }
TLPatternRule >> punctuationSatisfying: aBlock [
	^ PPPredicateObjectParser
		on: [ :element | element isPunctuation and: [ aBlock value: element text ] ]
		message: 'punctuation expected'
]

{ #category : 'running' }
TLPatternRule >> runOnSentence: aSentence [ 
	^ (self pattern matchesIn: aSentence children)
		collect: [ :each | TLRuleFailure on: self at: (TLPhrase withAll: each) ]
]

{ #category : 'factory' }
TLPatternRule >> separator [
	^ self whitespace / self markup
]

{ #category : 'factory' }
TLPatternRule >> separators [
	^ self separator star
]

{ #category : 'factory' }
TLPatternRule >> whitespace [
	^ PPPredicateObjectParser
		on: [ :element | element isWhitespace ]
		message: 'whitespace expected'
]

{ #category : 'factory' }
TLPatternRule >> word [
	^ PPPredicateObjectParser
		on: [ :element | element isWord ]
		message: 'word expected'
]

{ #category : 'factory' }
TLPatternRule >> word: aString [
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ element text sameAs: aString ] ]
		message: 'word expected'
]

{ #category : 'factory' }
TLPatternRule >> wordIn: aCollection [
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ aCollection anySatisfy: [ :each | element text sameAs: each ] ] ]
		message: 'word expected'
]

{ #category : 'factory' }
TLPatternRule >> wordSatisfying: aBlock [
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ aBlock value: element ] ]
		message: 'word expected'
]

{ #category : 'factory' }
TLPatternRule >> wordTextSatisfying: aBlock [
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ aBlock value: element text ] ]
		message: 'word expected'
]
