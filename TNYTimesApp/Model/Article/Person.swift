/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Person : Codable {
	let firstname : String?
	let middlename : String?
	let lastname : String?
	let qualifier : String?
	let title : String?
	let role : String?
	let organization : String?
	let rank : Int?

	enum CodingKeys: String, CodingKey {

		case firstname = "firstname"
		case middlename = "middlename"
		case lastname = "lastname"
		case qualifier = "qualifier"
		case title = "title"
		case role = "role"
		case organization = "organization"
		case rank = "rank"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		firstname = try values.decodeIfPresent(String.self, forKey: .firstname)
		middlename = try values.decodeIfPresent(String.self, forKey: .middlename)
		lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
		qualifier = try values.decodeIfPresent(String.self, forKey: .qualifier)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		role = try values.decodeIfPresent(String.self, forKey: .role)
		organization = try values.decodeIfPresent(String.self, forKey: .organization)
		rank = try values.decodeIfPresent(Int.self, forKey: .rank)
	}

}
