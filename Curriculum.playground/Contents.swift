
//: Playground - noun: My curriculum

import UIKit

let photoURL = URL(string: "https://www.niceapp.it/wp-content/uploads/2017/03/dimitri.jpg")!
let birthDate = Curriculum.dateFormatter.date(from: "25/03/1980")!

let residence = Residence(street: "Via Papa Giovanni XXIII", streetNumber: "2", city: "Uliveto Terme", province: "Pisa", country: "Italy")
var dimitri = Person(firstName: "Dimitri", lastName: "Giani", birthDate: birthDate, photoURL: photoURL, residence: residence)

let curriculum = Curriculum(person: dimitri,
							contacts: [
								Contact(type: .phone, value: "+39 338 43 53 888"),
								Contact(type: .email, value: "dimitri@niceapp.it"),
								Contact(type: .website, value: "http://www.dimitrigiani.it"),
								Contact(type: .website, value: "https://www.niceapp.it")],
							workExperiences: [
								WorkExperience(from: Curriculum.dateFormatter.date(from: "15/05/2015")!, to: nil, companyName: "Nice APP", role: "Founder and Senior Developer", brief: "In Nice APP I manage all the projects as Tech Lead and Senior Developer."),
								WorkExperience(from: Curriculum.dateFormatter.date(from: "10/12/2015")!, to: Curriculum.dateFormatter.date(from: "21/03/2018"), companyName: "buildtest", role: "Creator, Founder and Developer", brief: "buildtest is a tool for Q/A test management for mobile platforms. In addition to having designed the project I also created the tool, both the server/web part and the iOS framework."),
								WorkExperience(from: Curriculum.dateFormatter.date(from: "06/06/2009")!, to: Curriculum.dateFormatter.date(from: "14/05/2015"), companyName: "Ovolab SRL", role: "iOS Software Engineer", brief: "In Ovolab I did a very intensive training program, moving from Junior to Senior role. I have been involved in the development of many important applications for the Italian Mobile panorama, such as the SEAT suite, Repubblica, Radio Deejay, Radio Capital and the Slow Food suite. I also trained in the development of video games based on the Cocos2D Framework, creating promotional and B2C videogames."),
								WorkExperience(from: Curriculum.dateFormatter.date(from: "1/1/2006")!, to: Curriculum.dateFormatter.date(from: "05/06/2009"), companyName: "Dimitri Giani", role: "Founder and Web/Mobile Developer", brief: "In my first entrepreneurial experience started as Web Developer I was mainly involved in Web Development, such as websites and web app development, back office and social networks. I have increased my experience both in terms of programming and management of staff and collaborators. During this period I also played the role of external consultant for Forzieri Seta where I managed all the development part of the e-commerce FrontEnd."),
								WorkExperience(from: Curriculum.dateFormatter.date(from: "10/3/2004")!, to: Curriculum.dateFormatter.date(from: "31/12/2005"), companyName: "Tesene SRL", role: "Web Designer/Developer", brief: "In Tesene SRL I worked on Web Development creating promotional websites with the role of Junior Web Developer."),
								WorkExperience(from: Curriculum.dateFormatter.date(from: "05/05/2000")!, to: Curriculum.dateFormatter.date(from: "06/05/2003"), companyName: "HiBit Puccini Computer", role: "Hardware Technician", brief: "In HiBit I played a Hardware Technician role. I was responsible for assembling personal computers and servers and installing and testing software. In the last year I had the role of Production Manager with the management of the production of 2 other empolyees.")],
							projects: [
								Project(name: "Guida turistica del comune di Calci", platforms: [.iOS, .tvOS, .watchOS]),
								Project(name: "Costituzione Italiana"),
								Project(name: "ChildExplorer"),
								Project(name: "Salone del Camper"),
								Project(name: "Magica"),
								Project(name: "Meting - Audio Notes"),
								Project(name: "Zia App"),
								Project(name: "IFAPP"),
								Project(name: "Quanto costa un'App?"),
								Project(name: "IconRecolor", platforms: [.macOS]),
								Project(name: "Ovolab SRL projects (see website)")],
							otherSections: [
								CurriculumSection(title: "Publications", body: """
									In 2017 I published my first book “Come le applicazioni stanno cambiando il mondo: Cosa devi fare per sfruttarle nel tuo business.”
									(“How applications are changing the world: What you have to do to exploit them in your business.”).
									In this book I analyze the world of Mobile
									Business by examining its characteristics and
									indicating the opportunities offered, describing in
									detail how to look at the development of a mobile application for your business.
									"""
								)
	]
)

print(curriculum)
