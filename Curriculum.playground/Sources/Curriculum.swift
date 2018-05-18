import UIKit

final public class Curriculum
{
	static public var dateFormatter: DateFormatter = {
		let df = DateFormatter()
		df.dateFormat = "dd/MM/yyyy"
		return df
	}()
	
	public let person: Person
	public var contacts: [Contact]
	public var workExperiences: [WorkExperience]
	public var projects: [Project]
	public var otherSections: [CurriculumSection]
	
	public init(person: Person, contacts: [Contact], workExperiences: [WorkExperience] = [], projects: [Project] = [], otherSections: [CurriculumSection] = [])
	{
		self.person = person
		self.contacts = contacts
		self.workExperiences = workExperiences
		self.projects = projects
		self.otherSections = otherSections
	}
}

extension Curriculum: CustomStringConvertible
{
	public var description: String {
		let experiences: String = workExperiences.map { $0.description }.joined(separator: "\n\n")
		let myContacts: String = contacts.map { $0.description }.joined(separator: "\n")
		let myProjects: String = projects.map { $0.description }.joined(separator: "\n")
		let sections: String = otherSections.map { $0.description }.joined(separator: "\n\n")
		
		return  """
		\(person)
		
		## Contacts:
		\(myContacts)
		
		## Work Experiences:
		\(experiences)
		
		## Projects:
		\(myProjects)
		
		\(sections)
		"""
	}
}
