//
//  FHIRSearchParam+Properties.swift
//  SMART-on-FHIR
//
//  Generated from FHIR {{ info.version }} on {{ info.date }}.
//  Copyright (c) {{ info.year }} SMART Platforms. All rights reserved.
//


/*!
 *  This extension defines convenience methods in order to be able to compose search queries
 *  in an object-oriented way.
 */
extension FHIRSearchParam
{
	{%- for ext in extensions %}
	{%- if "composite" == ext.type %}
	func {{ ext.name }}(composite: [String: String]) -> FHIRSearchParam {
	{%- else %}
	func {{ ext.name }}({% if ext.name in dupes and "string" != ext.type %}# {% endif %}{{ ext.type }}: {% if "number" == ext.type %}Float{% else %}String{% endif %}) -> FHIRSearchParam {
	{%- endif %}
		let p = FHIRSearchParam(subject: "{{ ext.original }}", {{ ext.type }}: {{ ext.type }})
		{%- if "_" != ext.name[0] %}
		{%- if ext.name in in_profiles %}
		p.supportedProfiles = [
		{%- for prof in in_profiles[ext.name] %}
			"{{ prof }}"
			{%- if not loop.last %},{% endif -%}
		{%- endfor %}
		]
		{%- endif %}
		{%- endif %}
		p.previous = self
		return p
	}
	{% if "token" == ext.type %}
	func {{ ext.name }}(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "{{ ext.original }}", token: asText)
		p.tokenAsText = true
		p.previous = self
		return p
	}
	{%- endif %}
	{%- if "_" != ext.name[0] and (ext.name not in dupes or "string" == ext.type) %}
	
	func {{ ext.name }}(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "{{ ext.original }}", missing: missing)
		p.previous = self
		return p
	}
	{%- endif %}
	{% endfor %}
}

