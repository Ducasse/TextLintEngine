Class {
	#name : 'TLPatternTokenizerTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'asserting' }
TLPatternTokenizerTest >> assert: aQueryString recognizes: aSentenceString [
	| results |
	results := self checkQuery: aQueryString on: aSentenceString.
	self assert: results notEmpty.
]

{ #category : 'asserting' }
TLPatternTokenizerTest >> assertInvalidQuery: aQueryString [
	| parser |
	parser := TLPatternTokenizer parse: aQueryString.
	self assert: parser isPetitFailure
]

{ #category : 'private' }
TLPatternTokenizerTest >> checkQuery: aQueryString on: aSentenceString [
	| results parser sentence |
	parser := self tokenizeQuery: aQueryString.
	sentence := self parseSentence: aSentenceString.
	results := parser matchesIn: sentence children.
	^ results
]

{ #category : 'asserting' }
TLPatternTokenizerTest >> deny: aQueryString recognizes: aSentenceString [
	| results |
	results := self checkQuery: aQueryString on: aSentenceString.
	self assert: results isEmpty
]

{ #category : 'private' }
TLPatternTokenizerTest >> parseSentence: aSentenceString [
	| checker sentence |
	checker := TLTextLintChecker new.
	sentence := (checker parse: aSentenceString) document paragraphs first sentences first.
	^ sentence
]

{ #category : 'tests-errors' }
TLPatternTokenizerTest >> testInvalidCharacter [
	self assertInvalidQuery: (String with: Character insert)
]

{ #category : 'tests-errors' }
TLPatternTokenizerTest >> testInvalidEmpty [
	self assertInvalidQuery: ''
	
]

{ #category : 'tests-errors' }
TLPatternTokenizerTest >> testInvalidSyntax [
	self assertInvalidQuery: '{foo'
	
]

{ #category : 'tests-errors' }
TLPatternTokenizerTest >> testInvalidType [
	self assertInvalidQuery: '{}'.
	self assertInvalidQuery: '{broken}'.
	self assertInvalidQuery: '{very broken}'
]

{ #category : 'tests' }
TLPatternTokenizerTest >> testSentence [
	self assert: '{verb}' recognizes: 'TextLint works perfectly'.
	self assert: '{adverb}' recognizes: 'TextLint works perfectly'.
	self assert: '{verb} {adverb}' recognizes: 'TextLint works perfectly'.
	self deny: '{adverb} {verb}' recognizes: 'TextLint works perfectly'.
	
]

{ #category : 'private' }
TLPatternTokenizerTest >> tokenizeQuery: aQueryString [
	| parser |
	parser := TLPatternTokenizer parse: aQueryString.
	self deny: parser isPetitFailure.
	^ parser
]
