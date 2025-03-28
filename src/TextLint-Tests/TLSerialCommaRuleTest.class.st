Class {
	#name : 'TLSerialCommaRuleTest',
	#superclass : 'TLAbstractRuleTest',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'as yet unclassified' }
TLSerialCommaRuleTest >> ruleUnderTest [
	^ TLSerialCommaRule 
]

{ #category : 'as yet unclassified' }
TLSerialCommaRuleTest >> testMoreComplex [
	self assertCorrect: 'Mrs Jones left her money to Sally and Fred Smith, Margaret and John Williams, Betty and Harold Spivey, and their children.'.
	self assertProblem: 'Mrs Jones left her money to Sally and Fred Smith, Margaret and John Williams, Betty and Harold Spivey and their children.'
]

{ #category : 'as yet unclassified' }
TLSerialCommaRuleTest >> testSimple [
	self assertCorrect: 'Mrs Jones left all her money to her three children: Huey, Dewey, and Louie.'.
	self assertProblem: 'Mrs Jones left all her money to her three children: Huey, Dewey and Louie.'
]
