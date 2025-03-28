Class {
	#name : 'TLThingRule',
	#superclass : 'TLAvoidMultipleWordsUsageRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'running' }
TLThingRule >> name [
	^ 'Avoid "thing"'
]

{ #category : 'accessing' }
TLThingRule >> rationale [
	^ 'Avoid using the word "thing". Is too general and weakens the sentence.'
]

{ #category : 'running' }
TLThingRule >> wordsToAvoid [
	^ #('thing' 'things')

]
