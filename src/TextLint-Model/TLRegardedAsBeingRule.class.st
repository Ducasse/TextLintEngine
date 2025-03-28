Class {
	#name : 'TLRegardedAsBeingRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLRegardedAsBeingRule >> matchingString [
	^ 'regarded as being'
]

{ #category : 'accessing' }
TLRegardedAsBeingRule >> name [
	^ 'Avoid "regarded as"'
]

{ #category : 'accessing' }
TLRegardedAsBeingRule >> rationale [
	^ '"Being" is not appropriate after "regard as".'
]
