import Foundation

public class Contact
{
	public enum ContactType: String {
		case phone
		case email
		case website
	}
	
	public let type: ContactType
	public let value: String
	
	public init(type: ContactType, value: String)
	{
		self.type = type
		self.value = value
	}
}

extension Contact: CustomStringConvertible
{
	public var description: String {
		return "\(type.rawValue): \(value)"
	}
}
