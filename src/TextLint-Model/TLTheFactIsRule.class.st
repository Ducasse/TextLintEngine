Class {
	#name : 'TLTheFactIsRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLTheFactIsRule >> matchingString [
	^ 'the fact is'
]

{ #category : 'accessing' }
TLTheFactIsRule >> name [
	^ 'Avoid "the fact is"'
]

{ #category : 'accessing' }
TLTheFactIsRule >> rationale [
	^ 'A bad beginning for a sentence. If you think you are possessed of the truth or fact state it.'
]
