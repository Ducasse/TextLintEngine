Class {
	#name : 'TLWritingStyleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLWritingStyleTest >> testCreation [

	| aStyle |
	
	aStyle := TLWritingStyle named: 3 formedBy: #(1 2).

	self assert: (aStyle name = 3).	
	self assert: (aStyle includes: 1).
	self assert: (aStyle includes: 2)
]

{ #category : 'test' }
TLWritingStyleTest >> testImmutability [

	| aStyle |
	
	aStyle := TLWritingStyle named: 3 formedBy: #(1 2).
	
	self deny: (aStyle includes: 4).	
	aStyle rules add: 4.
	self deny: (aStyle includes: 4).	

]

{ #category : 'test' }
TLWritingStyleTest >> testMinusComposition [

	| style1 style2 style3 |
	
	style1 := TLWritingStyle named: '1' formedBy: #(3 4).
	style2 := TLWritingStyle named: '2' formedBy: #(5 4).
	
	style3 := style1 - style2.
	
	self assert: style3 name = '1 - 2'.
	self assert: style3 rules size = 1.
	self assert: (style3 rules includes: 3).

]

{ #category : 'test' }
TLWritingStyleTest >> testPlusComposition [

	| style1 style2 style3 |
	
	style1 := TLWritingStyle named: '1' formedBy: #(3 4).
	style2 := TLWritingStyle named: '2' formedBy: #(5 6).
	
	style3 := style1 + style2.
	
	self assert: style3 name = '1 + 2'.
	self assert: style3 rules size = 4.
	self assert: (style3 rules includes: 3).
	self assert: (style3 rules includes: 4).
	self assert: (style3 rules includes: 5).
	self assert: (style3 rules includes: 6).
]
