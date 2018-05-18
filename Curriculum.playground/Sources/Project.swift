import Foundation

public class Project
{
	public enum Platform: String {
		case iOS
		case macOS
		case tvOS
		case watchOS
	}
	
	public let name: String
	public let platforms: [Platform]
	
	public init(name: String, platforms: [Platform] = [.iOS])
	{
		self.name = name
		self.platforms = platforms
	}
}

extension Project: CustomStringConvertible
{
	public var description: String {
		let platformsFormatted: String = platforms.map { String($0.rawValue) }.joined(separator: ", ")
		return "\(name) (\(platformsFormatted))"
	}
}
