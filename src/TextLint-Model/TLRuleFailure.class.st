Class {
	#name : 'TLRuleFailure',
	#superclass : 'Object',
	#instVars : [
		'rule',
		'element'
	],
	#category : 'TextLint-Model-Runner',
	#package : 'TextLint-Model',
	#tag : 'Runner'
}

{ #category : 'instance creation' }
TLRuleFailure class >> on: aRule at: anElement [

	^self new initializeOn: aRule at: anElement
]

{ #category : 'accessing' }
TLRuleFailure >> element [
	^ element
]

{ #category : 'initialization' }
TLRuleFailure >> initializeOn: aRule at: anElement [

	rule := aRule.
	element := anElement
]

{ #category : 'testing' }
TLRuleFailure >> isRuleFailure [
	^true
]

{ #category : 'printing' }
TLRuleFailure >> printOn: aStream [
	super printOn: aStream.
	aStream cr; tab; print: self rule.
	aStream cr; tab; print: self element
]

{ #category : 'accessing' }
TLRuleFailure >> rule [
	^ rule
]
