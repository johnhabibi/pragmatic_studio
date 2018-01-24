require_relative 'fund_request'
require_relative 'project'
project1 = Project.new("Project ABC", 5000, 1000)
project2 = Project.new("Project LMN", 3000, 500)
project3 = Project.new("Project XYZ", 75, 25)

projects = FundRequest.new("VC-Friendly Start-up Projects")
puts projects.title
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.request_funding

project4 = Project.new("Project TBD", 10000)

projectrequest = FundRequest.new("Ask My Family For Money")
puts projectrequest.title
projectrequest.add_project(project1)
projectrequest.add_project(project2)
projectrequest.add_project(project3)
projectrequest.add_project(project4)
projectrequest.request_funding
