Class {
	#name : 'TLMassPaperAnalysis',
	#superclass : 'Object',
	#category : 'TextLint-Model-Runner',
	#package : 'TextLint-Model',
	#tag : 'Runner'
}

{ #category : 'tools' }
TLMassPaperAnalysis class >> analyzeAllHistory: aDirectory [
	"self analyzeAllHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy')"
	
	aDirectory directoryNames asSortedCollection 
		do: [ :each | self analyzeHistory: (aDirectory directoryNamed: each) ]
		displayingProgress: 'Analyzing Directories'
]

{ #category : 'tools' }
TLMassPaperAnalysis class >> analyzeEffectiveness: aDirectory [
	"self analyzeEffectiveness: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy')"
	
	| checker results |
	checker := TLTextLintChecker new.
	results := OrderedCollection new.
	(TLWritingStyle scientificPaperStyle rules
		asSortedCollection: [ :a :b | a name < b name ])
		do: [ :each | checker addRule: each ].
	(aDirectory fileNames asSortedCollection
		select: [ :each | each endsWith: '.txt' ])
		do: [ :filename |
			| stream count last size average |
			stream := MultiByteFileStream new initialize.
			stream open: (aDirectory fullNameFor: filename) forWrite: false.
			stream nextLine.
			count := 0.
			average := Array new: checker rules size + 1 withAll: 0.
			[ stream atEnd ] whileFalse: [
				count := count + 1.
				last := stream nextLine splitOn: String tab.
				size := (last at: 3) asNumber asFloat.
				last := (last allButFirst: 3)
					collect: [ :each | each asNumber / size ].
				average keysAndValuesDo: [ :key :value | average at: key put: value + (last at: key) ] ].
			average keysAndValuesDo: [ :key :value | average at: key put: value / count asFloat ].
			results addLast: (Array with: filename) , (Array streamContents: [ :output |
				average with: last do: [ :a :l |
					output nextPut: (a isZero
						ifTrue: [ 0 ]
						ifFalse: [ (100.0 - (100.0 * l / a)) rounded ]) ] ]) ]
		displayingProgress: 'Calculating Effectiveness'.
	FileStream forceNewFileNamed: (aDirectory containingDirectory fullNameFor: 'casestudy-effectiveness/effectiveness.txt') do: [ :stream |
		stream nextPutAll: 'Filename'; tab; nextPutAll: 'Total'; tab.
		checker rules
			do: [ :rule | stream nextPutAll: rule name ]
			separatedBy: [ stream tab ].
		stream cr.
		results 
			do: [ :row | 	
				row 
					do: [ :col | stream nextPutAll: col asString ]
					separatedBy: [ stream tab ] ]
			separatedBy: [ stream cr ] ].
	^ results
]

{ #category : 'tools' }
TLMassPaperAnalysis class >> analyzeHistory: aDirectory [
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/petitparser')"
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/J2EE')"
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/cop')"
	"self analyzeHistory: (FileDirectory on: '/Users/renggli/University/git/papers/TextLint/TextLint-IWST2010/casestudy-history/pinocchio')"
	
	| checker results |
	checker := TLTextLintChecker new.
	results := OrderedCollection new.
	(TLWritingStyle scientificPaperStyle rules
		asSortedCollection: [ :a :b | a name < b name ])
		do: [ :each | checker addRule: each ].
	aDirectory fileNames asSortedCollection 
		do: [ :filename |
			| stream contents document failures |
			stream := MultiByteFileStream new initialize.
			stream open: (aDirectory fullNameFor: filename) forWrite: false.
			contents := [ stream basicNext: stream size ] ensure: [ stream close ].
			document := TLTextPhraser parse: (TLLatexTokenizer parse: contents).
			failures := document allElements gather: [ :each | each checkWith: checker ].
			results addLast: (Array 
				with: (filename)
				with: (contents size)
				with: (document sentences detectSum: [ :sentence | 
					sentence children detectSum: [ :element | 
						element class = TLMarkup
							ifTrue: [ 0 ]
							ifFalse: [ element token size ] ] ])
				with: (failures size)) , (checker rules
					collect: [ :each | failures count: [ :failure | failure rule == each ] ]) ]
		displayingProgress: 'Analyzing History'.
	FileStream forceNewFileNamed: (aDirectory containingDirectory fullNameFor: aDirectory localName , '.txt') do: [ :stream |
		stream nextPutAll: 'Filename'; tab; nextPutAll: 'Filesize'; tab; nextPutAll: 'Textsize'; tab; nextPutAll: 'Failures'; tab.
		checker rules
			do: [ :rule | stream nextPutAll: rule name ]
			separatedBy: [ stream tab ].
		stream cr.
		results 
			do: [ :row | 	
				row 
					do: [ :col | stream nextPutAll: col asString ]
					separatedBy: [ stream tab ] ]
			separatedBy: [ stream cr ] ].
	^ results
]

{ #category : 'private' }
TLMassPaperAnalysis >> analyze [
	| paperNames allFailures aChecker file fileContents author checker |
	aChecker := TLTextLintChecker new.
	TLWritingStyle scientificPaperStyle rules
		do: [:rule | aChecker addRule: rule].
	allFailures := Dictionary new.
	paperNames := (FileDirectory on: '/Users/ressia/temp/Papers/Helvetia') fullNamesOfAllFilesInSubtree
				select: [:each | each endsWith: '.tex'].
	paperNames
		do: [:each | 
			fileContents := (StandardFileStream readOnlyFileNamed: each) contentsOfEntireFile.
			fileContents := (fileContents copyReplaceAll: String crlf with: String cr)
						copyReplaceAll: String lf
						with: String cr.
			author := nil.
			(fileContents findString: '% $Author:'  startingAt: 1 ) = 0 
				ifFalse: [author := fileContents copyFrom: (fileContents findString: '% $Author:'  startingAt: 1 ) to: (fileContents findDelimiters: '$' startingAt: (fileContents findString: '% $Author:'  startingAt: 1 ) )].
			(fileContents findString: '\author{'  startingAt: 1 ) = 0 
				ifFalse: [author := fileContents copyFrom: (fileContents findString: '\author{'  startingAt: 1 ) to: (fileContents findDelimiters: '}' startingAt: (fileContents findString: '\author{'  startingAt: 1 ) )].
			checker := aChecker parse: fileContents.
			allFailures at: each put: checker results ].
	file := CrLfFileStream forceNewFileNamed: '/Users/ressia/temp/SCGPapersTextLintFailures.txt'.
	^ allFailures
		keysAndValuesDo: [:key :value | value
				do: [:eachFailure | file nextPutAll: key;
						 nextPutAll: '	';
						 nextPutAll: author asString;
						 nextPutAll: '	';
						 nextPutAll: eachFailure rule class name;
						 nextPutAll: '	';
						 nextPutAll: eachFailure element text;
						 nextPutAll: '
													']]

												

]
