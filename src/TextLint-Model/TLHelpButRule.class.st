Class {
	#name : 'TLHelpButRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLHelpButRule >> matchingString [
	^ 'help but'
]

{ #category : 'accessing' }
TLHelpButRule >> name [
	^ 'Avoid "help but"'
]

{ #category : 'accessing' }
TLHelpButRule >> rationale [
	^ '"But" is unnecessary after "help".'
]
