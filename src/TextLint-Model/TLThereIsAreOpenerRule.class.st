Class {
	#name : 'TLThereIsAreOpenerRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLThereIsAreOpenerRule >> matchingPattern [
	^ (self anchorBegin) , (self word: 'there') ,  (self separators) , ( (self word: 'is') / (self word: 'are') )
]

{ #category : 'accessing' }
TLThereIsAreOpenerRule >> name [
	^'Avoid "There is/are" openers'
]

{ #category : 'accessing' }
TLThereIsAreOpenerRule >> rationale [
	^ 'Avoid the use of There is/are as openers. There are two security guards at the gate -> Two security guards stand at the gate.'
]
