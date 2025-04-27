#import "./template.typ": *

// Put your personal information here, replacing mine
#let name = "Surendra Jammishetti"
#let location = "Santa Cruz, CA"
#let email = "suri312006@gmail.com"
#let github = "github.com/Suri312006"
#let linkedin = "linkedin.com/in/surendra-jammishetti-909809293"
#let phone = "+1 (669) 223-6681"
#let personal-site = "suri.codes"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of California, Santa Cruz",
  location: "Santa Cruz, CA",
  dates: dates-helper(start-date: "June 2023", end-date: "June 2026"),
  degree: "Bachelor's of Science, Computer Engineering, concentration: Systems Programming",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Cumulative GPA: 3.9\/4.0 | Dean's List
- Relevant Coursework: Data Structures and Algorithms, Principles of Computer Systems, Parallel
  and Concurrent Programming, Computer Architecture,  Discrete Math, Linear Algebra 

== Work Experience

#work(
  title: "Operating Systems Security Researcher",
  location: "Santa Cruz, CA",
  company: "UCSC: Center for Research in Systems and Storage",
  dates: dates-helper(start-date: "Sep. 2024", end-date: "Present"),
  tools: "Rust, Qemu, Kernel Programming"
)
- Responsible for implementing the security primitives for a novel research operating system
- Working with Professor Owen Arden to integrate Decentralized Information Flow Control into the OS kernel
- Reading papers in the field to design core security primitives with high efficiency

#work(
  title: "Lead Software Engineer",
  location: "Santa Cruz, CA",
  company: "ConnectifyAI",
  dates: dates-helper(start-date: "Mar. 2024", end-date: "Sep. 2024"),
  tools: "Go, Python, Typescript, PostgreSQL, Docker"
)
- Led a team of 10 Undergrads and masters students, making important decisions such as deciding the tech stack, and managing the Gitlab Repository
- Created a performant REST API for our services using Go and PostgreSQL.
- Learned Docker and GitLab Runner to automate backend deployments
- Worked with Professor Razvan Marinescu to research viable, performant methods to chain multiple AI/ML models


#work(
  title: "Software Engineering Intern",
  location: "Santa Cruz, CA",
  company: "LightLinks",
  dates: dates-helper(start-date: "June 2024", end-date: "Aug. 2024"),
  tools: "Embedded Rust and C Programming, eBPF, XDP, Kernel Programming, Networking"
)
- Engineered a Multi-Device system to facilitate a light-based network protocol
- Used existing kernel frameworks, such as eBPF and XDP to implement project specifications
- Lead the charge in migrating legacy C codebase to Rust for improved developer experience and reliability
- Set up a custom GitHub Actions runner to facilitate the building and testing of embedded networking software

== Extracurricular Activities

#extracurriculars(
  activity: "MITRE eCTF 2025",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Present"),
  tools: "Rust, Docker, OpenOCD, Embedded Programming, GDB, Cryptography"
)

- Learned embedded communication protocol, UART, to facilitate communication between host and microcontroller.
- Used GDB with OpenOCD to debug faults during the development process.
- Employed docker to create build scripts to improve developer tooling for the team. 
- Implemented a custom DPRF scheme to ensure secure broadcast streaming with subscriptions.

== Projects

#project(
  name: "Hermes",
  // Role is optional
  // role: "Solo Developer",
  // Dates is optional
  // dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "github.com/Suri312006/Hermes",
  tools: "Rust, gRPC, Docker, AWS Nitro Enclaves"
)
- Implementation of a meta-data private, traffic analysis-resistant messaging protocol.
- Expands upon the #link("https://www.computer.org/csdl/proceedings-article/sp/2025/223600a065/21B7R9OGMwg")[original work] by supporting
  multiple devices per user. 
- Deployable to TEE's (Trusted Execution Environments) trivially.
- Project for graduate level research class, report available #link("https://drive.google.com/file/d/15nm5yllC4aBIhJzuWWI5bV3GLxm6wPHx/view?usp=sharing")[here]

== Skills
- *Programming Languages*: Rust, Go, C/C++, Protobuf, Type/Javascript, Python, SQL (Postgres, Sqlite)
- *Developer Tools*: Git, Nix, Helix, Docker
- *Technologies*: gRPC, REST-API, AWS (EC2)  
