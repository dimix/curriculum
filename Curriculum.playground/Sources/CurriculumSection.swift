import Foundation

public class CurriculumSection
{
	public let title: String
	public let body: String
	
	public init(title: String, body: String)
	{
		self.title = title
		self.body = body
	}
}

extension CurriculumSection: CustomStringConvertible
{
	public var description: String {
		return """
		## \(title)
		\(body)
		"""
	}
}
