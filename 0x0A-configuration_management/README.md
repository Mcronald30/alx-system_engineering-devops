
Configuration Management

Configuration Management (CM) is a discipline that focuses on managing and controlling the evolving state of complex systems throughout their lifecycle. It involves identifying, documenting, and maintaining the configuration of a system's components and ensuring that changes are systematically controlled.

The key objectives of Configuration Management include:

Identification: Clearly identifying and documenting all the components of a system, including hardware, software, documentation, and other related items. Each component is assigned a unique identifier for tracking and reference.

Control: Implementing a systematic approach to control changes to the system's components. This involves creating baselines, which are snapshots of the system's configuration at specific points in time, and managing any changes through a formalized process.

Status Accounting: Keeping a record of the current status and changes made to each configuration item over time. This helps in tracking the history of changes and understanding the current state of the system.

Verification and Audit: Regularly verifying that the actual configuration of the system aligns with its documented configuration. Audits help ensure compliance with established configuration management processes and identify any discrepancies.

Documentation: Maintaining comprehensive documentation for all configuration items, including specifications, design documents, and user manuals. This documentation serves as a reference for understanding the system's architecture and functionality.

Change Management: Handling changes in a systematic way, including assessing the impact of proposed changes, obtaining approvals, and ensuring proper implementation. Change management helps prevent unintended consequences and ensures that modifications are aligned with the overall system requirements.

Configuration Management is crucial in various industries, especially in software development, aerospace, defense, and other fields where complex systems are developed and maintained. It enhances the reliability, quality, and maintainability of systems by providing a structured and disciplined approach to managing configurations, reducing the risk of errors and ensuring that systems can be effectively maintained and upgraded over time.

TASKS OF ALX
Resources
Read or watch:

Intro to Configuration Management
Puppet resource type: file (check “Resource types” for all manifest types in the left menu)
Puppet’s Declarative Language: Modeling Instead of Scripting
Puppet lint
Puppet emacs mode
Requirements
General
All your files will be interpreted on Ubuntu 20.04 LTS
All your files should end with a new line
A README.md file at the root of the folder of the project is mandatory
Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors
Your Puppet manifests must run without error
Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about
Your Puppet manifests files must end with the extension .pp
Note on Versioning
Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

Install puppet
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
You do not need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax which is virtually identical in newer versions of Puppet.

Puppet 5 Docs

Install puppet-lint
$ gem install puppet-lint
Tasks
0. Create a file
mandatory
Using Puppet, create a file in /tmp.

Requirements:

File path is /tmp/school
File permission is 0744
File owner is www-data
File group is www-data
File contains I love Puppet
Example:

root@6712bef7a528:~# puppet-lint --version
puppet-lint 2.5.2
root@6712bef7a528:~# puppet-lint 0-create_a_file.pp
root@6712bef7a528:~# 
root@6712bef7a528:~# puppet apply 0-create_a_file.pp
Notice: Compiled catalog for 6712bef7a528.ec2.internal in environment production in 0.04 seconds
Notice: /Stage[main]/Main/File[school]/ensure: defined content as '{md5}f1b70c2a42a98d82224986a612400db9'
Notice: Finished catalog run in 0.03 seconds
root@6712bef7a528:~#
root@6712bef7a528:~# ls -l /tmp/school
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/school
root@6712bef7a528:~# cat /tmp/school
I love Puppetroot@6712bef7a528:~#
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x0A-configuration_management
File: 0-create_a_file.pp
   
1. Install a package
mandatory
Using Puppet, install flask from pip3.

Requirements:

Install flask
Version must be 2.1.0
Example:

root@9665f0a47391:/# puppet apply 1-install_a_package.pp
Notice: Compiled catalog for 9665f0a47391 in environment production in 0.14 seconds
Notice: /Stage[main]/Main/Package[Flask]/ensure: created
Notice: Applied catalog in 0.20 seconds
root@9665f0a47391:/# flask --version
Python 3.8.10
Flask 2.1.0
Werkzeug 2.1.1
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x0A-configuration_management
File: 1-install_a_package.pp
   
2. Execute a command
mandatory
Using Puppet, create a manifest that kills a process named killmenow.

Requirements:

Must use the exec Puppet resource
Must use pkill
Example:

Terminal #0 - starting my process

root@d391259bf577:/# cat killmenow
#!/bin/bash
while [[ true ]]
do
    sleep 2
done

root@d391259bf577:/# ./killmenow
Terminal #1 - executing my manifest

root@d391259bf577:/# puppet apply 2-execute_a_command.pp
Notice: Compiled catalog for d391259bf577.hsd1.ca.comcast.net in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[killmenow]/returns: executed successfully
Notice: Finished catalog run in 0.10 seconds
root@d391259bf577:/# 
Terminal #0 - process has been terminated

root@d391259bf577:/# ./killmenow
Terminated
root@d391259bf577:/#
Repo:

GitHub repository: alx-system_engineering-devops
Directory: 0x0A-configuration_management
File: 2-execute_a_command.pp
