Class {
	#name : 'TLAllowToRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLAllowToRule >> matchingPattern [
	^ (self word: 'allow') / (self word: 'allows') , (self separators) , (self word: 'to')
]

{ #category : 'accessing' }
TLAllowToRule >> name [
	^ 'Avoid "allow to"'
]

{ #category : 'accessing' }
TLAllowToRule >> rationale [
	^ 'Never use the expressions "allow/s to". This expression requires a direct object.'
]
