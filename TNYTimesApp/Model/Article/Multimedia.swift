/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Multimedia : Codable {
	let rank : Int?
	let subtype : String?
	let caption : String?
	let credit : String?
	let type : String?
	let url : String?
	let height : Int?
	let width : Int?
	let legacy : Legacy?
	let subType : String?
	let crop_name : String?

	enum CodingKeys: String, CodingKey {

		case rank = "rank"
		case subtype = "subtype"
		case caption = "caption"
		case credit = "credit"
		case type = "type"
		case url = "url"
		case height = "height"
		case width = "width"
		case legacy = "legacy"
		case subType = "subType"
		case crop_name = "crop_name"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		rank = try values.decodeIfPresent(Int.self, forKey: .rank)
		subtype = try values.decodeIfPresent(String.self, forKey: .subtype)
		caption = try values.decodeIfPresent(String.self, forKey: .caption)
		credit = try values.decodeIfPresent(String.self, forKey: .credit)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		height = try values.decodeIfPresent(Int.self, forKey: .height)
		width = try values.decodeIfPresent(Int.self, forKey: .width)
		legacy = try values.decodeIfPresent(Legacy.self, forKey: .legacy)
		subType = try values.decodeIfPresent(String.self, forKey: .subType)
		crop_name = try values.decodeIfPresent(String.self, forKey: .crop_name)
	}

}
