Class {
	#name : 'TLTheTruthIsRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLTheTruthIsRule >> matchingString [
	^ 'the truth is'
]

{ #category : 'accessing' }
TLTheTruthIsRule >> name [
	^ 'Avoid "the truth is"'
]

{ #category : 'accessing' }
TLTheTruthIsRule >> rationale [
	^ 'A bad beginning for a sentence. If you think you are possessed of the truth or fact state it.'
]
