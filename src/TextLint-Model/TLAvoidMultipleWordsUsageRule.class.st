Class {
	#name : 'TLAvoidMultipleWordsUsageRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'running' }
TLAvoidMultipleWordsUsageRule >> matchingPattern [
	^  self wordIn: self wordsToAvoid
]

{ #category : 'running' }
TLAvoidMultipleWordsUsageRule >> wordsToAvoid [
	^ self subclassResponsibility
]
