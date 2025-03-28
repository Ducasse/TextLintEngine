Class {
	#name : 'TLElementTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLElementTest >> testChildren [

	| anElement |
	
	anElement := TLElement new.
	
	self assert: anElement children isEmpty
]
