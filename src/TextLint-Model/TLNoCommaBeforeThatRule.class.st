Class {
	#name : 'TLNoCommaBeforeThatRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLNoCommaBeforeThatRule >> matchingPattern [
	^ (self word) , (self separators) , (self punctuation: ',') , (self separators) , (self word: 'that')
]

{ #category : 'accessing' }
TLNoCommaBeforeThatRule >> name [
	^ 'Avoid comma'
]

{ #category : 'accessing' }
TLNoCommaBeforeThatRule >> rationale [
	^ 'In German, you must put a comma before "dass". Not in English.'
]
