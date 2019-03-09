"
Tests ZNode.
"
Class {
	#name : #ZNodeTest,
	#superclass : #TestCase,
	#category : #'Zac-Tests'
}

{ #category : #tests }
ZNodeTest >> testWithVal [
	"comment stating purpose of message"

	| node |
	node := ZNode withVal: 5.
	self assert: (node val) equals: 5.
	self assert: (node next) equals: nil.
]
