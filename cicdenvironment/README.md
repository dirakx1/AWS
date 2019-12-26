# Scalable CI/CD Jenkins environment on AWS.

Main parts:

* Architechture
* Terraformation
* Agents provisioning


## Proposed solution 

* Deploy an EKS via terraform recipes.
* Install Jenkins on the EKS just created with Helm.
* if agents need some extra configuration this configuration
its pulled form a repo and installed via charts. 



 

