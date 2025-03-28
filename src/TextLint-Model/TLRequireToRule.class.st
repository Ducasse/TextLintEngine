Class {
	#name : 'TLRequireToRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLRequireToRule >> matchingPattern [
	^ (self word: 'require') / (self word: 'requires') , (self separators) , (self word: 'to')
]

{ #category : 'accessing' }
TLRequireToRule >> name [
	^ 'Avoid "required to"'
]

{ #category : 'accessing' }
TLRequireToRule >> rationale [
	^ 'Never use the expressions "require/s to". This expression requires a direct object.'
]
