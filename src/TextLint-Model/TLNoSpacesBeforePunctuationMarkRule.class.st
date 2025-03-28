Class {
	#name : 'TLNoSpacesBeforePunctuationMarkRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'running' }
TLNoSpacesBeforePunctuationMarkRule >> matchingPattern [
	^ (self whitespace) , (self punctuationIn: self punctuationsToAvoid) 
]

{ #category : 'accessing' }
TLNoSpacesBeforePunctuationMarkRule >> name [
	^ 'Avoid whitespace'
]

{ #category : 'running' }
TLNoSpacesBeforePunctuationMarkRule >> punctuationsToAvoid [
	^ #(',' '.' ':' ';' '!' '?')

]

{ #category : 'accessing' }
TLNoSpacesBeforePunctuationMarkRule >> rationale [
	^ 'There should be no whitespaces before any punctuation mark.'
]
