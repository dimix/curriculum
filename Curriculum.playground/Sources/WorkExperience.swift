import Foundation

public class WorkExperience
{
	public let from: Date
	private(set) public var to: Date?
	public let companyName: String
	public let role: String
	public let brief: String
	
	private var toFormatted: String {
		if let to = to {
			return Curriculum.dateFormatter.string(from: to)
		}
		return "current"
	}
	
	public init(from: Date, to: Date? = nil, companyName: String, role: String, brief: String)
	{
		self.from = from
		self.to = to
		self.companyName = companyName
		self.role = companyName
		self.brief = brief
	}
}

extension WorkExperience: CustomStringConvertible
{
	public var description: String {
		return """
		### \(companyName) - \(role)
		From \(Curriculum.dateFormatter.string(from: from)) to \(toFormatted)
		\(brief)
		"""
	}
}
