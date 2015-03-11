//
//  OtherTests.swift
//  OtherTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OtherTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Other {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Other {
		let instance = Other(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOther1() {
		let instance = testOther1_impl()
		testOther1_impl(json: instance.asJSON())
	}
	
	func testOther1_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "adverseevent-qicore-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "ADVEVT")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther2() {
		let instance = testOther2_impl()
		testOther2_impl(json: instance.asJSON())
	}
	
	func testOther2_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example-narrative.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		XCTAssertEqual(inst.id!, "other-example-narrative")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testOther3() {
		let instance = testOther3_impl()
		testOther3_impl(json: instance.asJSON())
	}
	
	func testOther3_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#requestingPractitioner")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#notes")
		XCTAssertEqual(inst.extension_fhir![1].valueString!, "The patient had fever peaks over the last couple of days. He is worried about these peaks.")
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#fulfillingEncounter")
		XCTAssertEqual(inst.extension_fhir![2].valueReference!.reference!, "Encounter/f201")
		XCTAssertEqual(inst.id!, "referral")
		XCTAssertEqual(inst.modifierExtension![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#referredForService")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].code!, "11429006")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].display!, "Consultation")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifierExtension![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#targetDate")
		XCTAssertEqual(inst.modifierExtension![1].valuePeriod!.end!.description, "2013-04-15")
		XCTAssertEqual(inst.modifierExtension![1].valuePeriod!.start!.description, "2013-04-01")
		XCTAssertEqual(inst.modifierExtension![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#status")
		XCTAssertEqual(inst.modifierExtension![2].valueCode!, "complete")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther4() {
		let instance = testOther4_impl()
		testOther4_impl(json: instance.asJSON())
	}
	
	func testOther4_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example2.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.name")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].valueString!, "Class1")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute.name")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].extension_fhir![0].valueString!, "attribute1")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].extension_fhir![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute.minOccurs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].extension_fhir![1].valueInteger!, 1)
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].extension_fhir![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute.maxOccurs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].extension_fhir![2].valueCode!, "*")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![2].extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute.name")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![2].extension_fhir![0].valueString!, "attribute2")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![2].extension_fhir![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute.minOccurs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![2].extension_fhir![1].valueInteger!, 0)
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![2].extension_fhir![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute.maxOccurs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![2].extension_fhir![2].valueInteger!, 1)
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class.attribute")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class")
		XCTAssertEqual(inst.id!, "classModel")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
