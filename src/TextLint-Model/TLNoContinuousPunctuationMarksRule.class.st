Class {
	#name : 'TLNoContinuousPunctuationMarksRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'running' }
TLNoContinuousPunctuationMarksRule >> matchingPattern [
	^ (self punctuationIn: self punctuationsToAvoid) , (self punctuationIn: self punctuationsToAvoid)
]

{ #category : 'accessing' }
TLNoContinuousPunctuationMarksRule >> name [
	^ 'Avoid continuous punctuation'
]

{ #category : 'running' }
TLNoContinuousPunctuationMarksRule >> punctuationsToAvoid [
	^ #(',' '.' ':' ';' '!' '?')


]

{ #category : 'accessing' }
TLNoContinuousPunctuationMarksRule >> rationale [
	^ 'There should be no continuous punctuation marks.'
]
