Class {
	#name : 'TLAsToWhetherRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLAsToWhetherRule >> matchingString [
	^ 'as to whether'
]

{ #category : 'accessing' }
TLAsToWhetherRule >> name [
	^ 'Avoid "as to whether"'
]

{ #category : 'accessing' }
TLAsToWhetherRule >> rationale [
	^ '"as to whether" is commonly misued, it is enough to write "whether".'
]
