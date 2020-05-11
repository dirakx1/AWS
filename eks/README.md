AWS EKS implementation with terraform 

The EKS service does not provide a cluster-level API parameter or resource to automatically configure the underlying Kubernetes cluster to allow worker nodes to join the cluster via AWS IAM role authentication.

    Run terraform output config_map_aws_auth and save the configuration into a file, e.g. config_map_aws_auth.yaml
    Run kubectl apply -f config_map_aws_auth.yaml
    You can verify the worker nodes are joining the cluster via: kubectl get nodes --watch

This implementation is extracted from, only used for research purposes:
* https://medium.com/devops-dudes/tutorial-standing-up-an-eks-cluster-with-terraform-4139ff0f1189
