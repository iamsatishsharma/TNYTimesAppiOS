/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Docs : Codable {
	let abstract : String?
	let web_url : String?
	let snippet : String?
	let lead_paragraph : String?
	let print_section : String?
	let print_page : String?
	let source : String?
	let multimedia : [Multimedia]?
	let headline : Headline?
	let keywords : [Keywords]?
	let pub_date : String?
	let document_type : String?
	let news_desk : String?
	let section_name : String?
	let subsection_name : String?
	let byline : Byline?
	let type_of_material : String?
	let _id : String?
	let word_count : Int?
	let uri : String?

	enum CodingKeys: String, CodingKey {

		case abstract = "abstract"
		case web_url = "web_url"
		case snippet = "snippet"
		case lead_paragraph = "lead_paragraph"
		case print_section = "print_section"
		case print_page = "print_page"
		case source = "source"
		case multimedia = "multimedia"
		case headline = "headline"
		case keywords = "keywords"
		case pub_date = "pub_date"
		case document_type = "document_type"
		case news_desk = "news_desk"
		case section_name = "section_name"
		case subsection_name = "subsection_name"
		case byline = "byline"
		case type_of_material = "type_of_material"
		case _id = "_id"
		case word_count = "word_count"
		case uri = "uri"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		abstract = try values.decodeIfPresent(String.self, forKey: .abstract)
		web_url = try values.decodeIfPresent(String.self, forKey: .web_url)
		snippet = try values.decodeIfPresent(String.self, forKey: .snippet)
		lead_paragraph = try values.decodeIfPresent(String.self, forKey: .lead_paragraph)
		print_section = try values.decodeIfPresent(String.self, forKey: .print_section)
		print_page = try values.decodeIfPresent(String.self, forKey: .print_page)
		source = try values.decodeIfPresent(String.self, forKey: .source)
		multimedia = try values.decodeIfPresent([Multimedia].self, forKey: .multimedia)
		headline = try values.decodeIfPresent(Headline.self, forKey: .headline)
		keywords = try values.decodeIfPresent([Keywords].self, forKey: .keywords)
		pub_date = try values.decodeIfPresent(String.self, forKey: .pub_date)
		document_type = try values.decodeIfPresent(String.self, forKey: .document_type)
		news_desk = try values.decodeIfPresent(String.self, forKey: .news_desk)
		section_name = try values.decodeIfPresent(String.self, forKey: .section_name)
		subsection_name = try values.decodeIfPresent(String.self, forKey: .subsection_name)
		byline = try values.decodeIfPresent(Byline.self, forKey: .byline)
		type_of_material = try values.decodeIfPresent(String.self, forKey: .type_of_material)
		_id = try values.decodeIfPresent(String.self, forKey: ._id)
		word_count = try values.decodeIfPresent(Int.self, forKey: .word_count)
		uri = try values.decodeIfPresent(String.self, forKey: .uri)
	}

}
