# Scalable CI/CD Jenkins environment on AWS.

Main parts:

* Architechture
* Terraformation
* Agents provisioning
* Jenkins exmple for a code pipeline


## Proposed solution 

* Deploy an EKS via terraform recipes.(main.tf)
* Install Jenkins on the EKS just created with Helm.(helm-jenkins.tf)
* if agents need some extra configuration this configuration
its pulled form a repo and installed via charts. 
* After Jenkins if provided users can make code pipelines 
(see JenkinfileCI)



 

