import UIKit

public class Person
{
	public let firstName: String
	public let lastName: String
	public let birthDate: Date
	public var residence: Residence
	public var photoURL: URL? = nil
	public var photo: UIImage? {
		if let url = photoURL, let data = try? Data(contentsOf: url)
		{
			return UIImage(data: data)
		}
		return nil
	}
	
	public init(firstName: String, lastName: String, birthDate: Date, photoURL: URL? = nil, residence: Residence)
	{
		self.firstName = firstName
		self.lastName = lastName
		self.photoURL = photoURL
		self.birthDate = birthDate
		self.residence = residence
	}
}

extension Person: CustomStringConvertible
{
	public var description: String {
		var photoTag = ""
		if let photoURL = photoURL {
			photoTag = "\n[Photo](\(photoURL))\n"
		}
		
		return  """
		# \(firstName) \(lastName) \(photoTag)
		Birthdate: \(Curriculum.dateFormatter.string(from: birthDate)),
		Residence: \(residence)
		"""
	}
}
