Class {
	#name : 'TLStuffRule',
	#superclass : 'TLAvoidMultipleWordsUsageRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLStuffRule >> name [
	^ 'Avoid "stuff"'
]

{ #category : 'accessing' }
TLStuffRule >> rationale [
	^ 'Avoid using the word "stuff". Is too general and weakens the sentence.'
]

{ #category : 'running' }
TLStuffRule >> wordsToAvoid [
	^ #('stuff' 'stuffs')

]
