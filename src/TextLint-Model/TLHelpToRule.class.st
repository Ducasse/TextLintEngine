Class {
	#name : 'TLHelpToRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLHelpToRule >> matchingPattern [
	^ (self word: 'help') / (self word: 'helps') , (self separators) , (self word: 'to')
]

{ #category : 'accessing' }
TLHelpToRule >> name [
	^'Avoid "help to"'
]

{ #category : 'accessing' }
TLHelpToRule >> rationale [
	^ 'Never use the expressions "help/s to". This expression requires a direct object.'
]
