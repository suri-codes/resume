#import "./template.typ": *

// Put your personal information here, replacing mine
#let name = "Surendra Jammishetti"
#let location = "Santa Cruz, CA"
#let email = "suri312006@gmail.com"
#let github = "github.com/suri-codes"
#let linkedin = "linkedin.com/in/suri-codes"
#let phone = "+1 (669) 223-6681"
#let personal-site = "www.suri.codes"

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
- Cumulative GPA: 3.91\/4.0 | Dean's List
// - Relevant Coursework: Data Structures and Algorithms, Operating Systems, Parallel
//   Programming, Computer Networks, Cryptography, Computer Architecture  
- Relevant Coursework: Data Structures, OS, Networks, Cryptography, Parallel Programming
== Work Experience

#work(
  title: "Operating Systems Security Researcher",
  location: "Santa Cruz, CA",
  company: "UCSC: Center for Research in Systems and Storage",
  dates: dates-helper(start-date: "Sep. 2024", end-date: "Present"),
  tools: "Rust, Qemu, Kernel Programming"
)
- Reduced OS build times by *90% (3h $->$ 20m)* by designing and deploying a #link("https://github.com/twizzler-operating-system/twizzler/pulls?q=+is%3Apr+author%3Asuri-codes+")[caching system]
- Implemented #link("https://github.com/twizzler-operating-system/twizzler/pulls?q=+is%3Apr+author%3Asuri-codes+")[kernel-level security primitives] (capabilities, memory isolation) for research OS.
- Working with Professor Owen Arden to integrate Decentralized Information Flow Control into the OS kernel.


#work(
  title: "Software Engineering Intern",
  location: "Santa Cruz, CA",
  company: "LightLinks",
  dates: dates-helper(start-date: "June 2024", end-date: "Aug. 2024"),
  tools: "Embedded Rust and C Programming, eBPF, XDP, Kernel Programming, Networking"
)
- Engineered a Multi-Device system to facilitate a light-based network protocol.
- Used existing kernel frameworks, such as eBPF and XDP to implement project specifications.
- Migrated legacy C codebase from C to Rust, reducing memory safety issues and improving developer productivity.
- Set up a custom GitHub Actions runner to build and test embedded networking software.

#work(
  title: "Lead Software Engineer",
  location: "Santa Cruz, CA",
  company: "ConnectifyAI",
  dates: dates-helper(start-date: "Mar. 2024", end-date: "Sep. 2024"),
  tools: "Go, Python, Typescript, PostgreSQL, Docker"
)
- Managed a team of 10 engineers (undergrads and graduate students), coordinating sprints and code reviews.
- Designed a system to build and run HuggingFace model pipelines with a custom runner.
- Created a performant REST API for our service using Go and PostgreSQL.
- Learned Docker and GitLab Runners to automate backend deployments.

== Extracurricular Activities

#extracurriculars(
  activity: "MITRE eCTF 2025 (16th out of 116)",
  dates: dates-helper(start-date: "Jan 2025", end-date: "April 2025"),
  tools: "Rust, Docker, OpenOCD, GDB, Cryptography"
)

- Implemented a communication protocol over UART; for use between the host and microcontroller.
- Used GDB with OpenOCD to debug faults during the development process.
- Created Devcontainers and build scripts to improve developer tooling for the team. 
- Implemented a custom cryptographic scheme (DPRF) to ensure secure broadcast streaming with subscriptions.

== Projects
#project(
  name: "Hermes",
  // Role is optional
  // role: "Solo Developer",
  // Dates is optional
  // dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "github.com/suri-codes/Hermes",
  tools: "Rust, gRPC, Docker, AWS Nitro Enclaves"
)
- Implementation of #link("https://www.computer.org/csdl/proceedings-article/sp/2025/223600a065/21B7R9OGMwg")[SPARTA] a state-of-the-art meta-data private, traffic analysis-resistant messaging protocol.
- Expanded the system to support multiple devices per user and validated the proof-of-concept using AWS Nitro Enclaves.
- Final project for graduate level research class, report available #link("https://drive.google.com/file/d/15nm5yllC4aBIhJzuWWI5bV3GLxm6wPHx/view?usp=sharing")[here].

#project(
  name: "TARS",
  url: "github.com/suri-codes/TARS",
  tools: "Rust, Sqlite, HTTP, TUI"
)
- Built a custom task-tracking and long-term planning system, which I use daily to manage coursework and projects.
- Developed a TUI interface backed by a Sqlite daemon to fetch tasks from various sources i.e. Canvas, Google Calendar.
- Implemented using a client server architecture compounding to an approximately *8k* LOC production-style codebase.



== Skills
- *Programming Languages*: Rust, Go, C/C++, (Type/Java)script, Python, SQL (Postgres, Sqlite), Protobuf
- *Developer Tools*: Git, Nix, Linux/Unix, GDB, Devcontainers, Cargo
- *Technologies*: gRPC, TCP/IP,  REST APIs, eBPF, QEMU, AWS (EC2, Nitro Enclaves), CI/CD (GitHub Actions, GitLab Runners)
