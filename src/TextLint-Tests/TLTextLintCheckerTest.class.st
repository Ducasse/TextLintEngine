Class {
	#name : 'TLTextLintCheckerTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Runner',
	#package : 'TextLint-Tests',
	#tag : 'Runner'
}

{ #category : 'test' }
TLTextLintCheckerTest >> testCheckSingleRule [
	| checker |
	checker := TLTextLintChecker new.

	checker addRule: (TLALotRule new).
	checker parse: 'test a lot that.'.
	
	self assert: (checker results size = 1 ).
	self assert: checker results first element isPhrase.
	self assert: (checker results first element text  = 'a lot' ).
	
	
	
	
]
