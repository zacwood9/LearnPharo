"
Tests ZLinkedList.
"
Class {
	#name : #ZLinkedListTest,
	#superclass : #TestCase,
	#category : #'Zac-Tests'
}

{ #category : #tests }
ZLinkedListTest >> testInsert [
	| list |
	list := ZLinkedList new.
	list insert: 5.
	self assert: (list count) equals: 1.
	self assert: (list elementAt: 1) equals: 5.
	list insert: 10.
	self assert: (list count) equals: 2.
	self assert: (list elementAt: 2) equals: 10.
]

{ #category : #tests }
ZLinkedListTest >> testNew [
	| zlist |
	zlist := ZLinkedList new.
	self assert: (zlist count) equals: 0.
]

{ #category : #tests }
ZLinkedListTest >> testRemoveAt [ 
	| list |
	list := ZLinkedList with: #(1 2 3).
	list removeAt: 1.
	self assert: (list count) equals: 2.
	self assert: (list elementAt: 1) equals: 2.
	
	list := ZLinkedList with: #(1 2 3).
	list removeAt: 2.
	self assert: (list count) equals: 2.
	self assert: (list elementAt: 2) equals: 3.
	
	list := ZLinkedList with: #(1 2 3).
	list removeAt: 3.
	self assert: (list count) equals: 2.
]

{ #category : #tests }
ZLinkedListTest >> testWith [
	"Tests initializing a ZLinkedList with a collection."
	| list |
	list := ZLinkedList with: #(1 2 3).
	self assert: (list elementAt: 1) equals: 1. 
	self assert: (list elementAt: 2) equals: 2. 
	self assert: (list elementAt: 3) equals: 3. 
]
