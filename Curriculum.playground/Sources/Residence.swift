import Foundation

public class Residence
{
	public let street: String
	public let streetNumber: String
	public let city: String
	public let province: String
	public let country: String
	
	public init(street: String, streetNumber: String, city: String, province: String, country: String)
	{
		self.street = street
		self.streetNumber = streetNumber
		self.city = city
		self.province = province
		self.country = country
	}
}

extension Residence: CustomStringConvertible
{
	public var description: String {
		return "\(street) \(streetNumber), \(city) (\(province)), \(country)"
	}
}
