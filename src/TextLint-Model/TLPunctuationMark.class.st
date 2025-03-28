Class {
	#name : 'TLPunctuationMark',
	#superclass : 'TLSyntacticElement',
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'testing' }
TLPunctuationMark >> isEndOfSentence [
	^ '.:;!?' includes: (token collection at: token start)
]

{ #category : 'testing' }
TLPunctuationMark >> isPunctuation [
	^ true
]
