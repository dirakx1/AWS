# Scalable CI/CD Jenkins environment on AWS.

![](JenkinsDistributed.png)

## Main components:

* Architechture
* Terraformation
* Agents provisioning
* Jenkins exmple for a code pipeline


## Proposed solution 

* Deploy an EKS cluster via terraform recipes. (see [main.tf](terraform/main.tf))
* Install Jenkins on the EKS just created with Helm.(see [helm-jenkins.tf](terraform/helm-jenkins.tf))
* If agents need some extra configuration this configuration
its pulled form a repo and installed via charts. (see [values.yaml](values.yaml))
* After Jenkins is provided users can change the Jenkins-AWS environment with a code pipeline 
(see [JenkinsfileTF](JenkinsfileTF)).
* After Jenkins is provided users can make code pipelines for their projects
(see [JenkinsfileCI](JenkinsfileCI)).

## Teams workflow 

* Teams can interact with IAC recipes defined via terraform (see [JenkinsfileTF](JenkinsfileTF)), to change jenkins agents capacity and configuration
* Also teams can define pipelines as code on their projects or making pipelines only to interact with 
the distributed Jenkins environment.(see [JenkinsfileCI](JenkinsfileCI)). 







 

