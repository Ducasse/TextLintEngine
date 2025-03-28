Class {
	#name : 'TLInsightfulRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLInsightfulRule >> matchingString [
	^ 'insightful'

]

{ #category : 'accessing' }
TLInsightfulRule >> name [
	^ 'Avoid "insightful"'
]

{ #category : 'accessing' }
TLInsightfulRule >> rationale [
	^ 'The word is a suspicious overstatement for perceptive. Only used for remarkable visions.'
]
