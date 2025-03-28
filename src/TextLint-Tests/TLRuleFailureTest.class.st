Class {
	#name : 'TLRuleFailureTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Runner',
	#package : 'TextLint-Tests',
	#tag : 'Runner'
}

{ #category : 'test' }
TLRuleFailureTest >> testCreation [

	| aFailure |
	
	aFailure := TLRuleFailure on: 1 at: 2.
	
	self assert: aFailure rule = 1.
	self assert: aFailure element = 2
]
