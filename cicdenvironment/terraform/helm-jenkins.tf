## Execute jenkins install on EKS via helm.

provisioner "remote-exec" {
  inline = [
    "wget https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz",
    "tar zxfv helm-v2.9.1-linux-amd64.tar.gz",
    "cp linux-amd64/helm .",
    "kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin",
    "kubectl create serviceaccount tiller --namespace kube-system && kubectl create clusterrolebinding tiller-admin-binding --clusterrole=cluster-admin --serviceaccount=kube-system:tiller",
    "./helm init --service-account=tiller",
    "./helm repo update",
    # Install jenkins
    "./helm install -n cd stable/jenkins -f jenkins/values.yaml --version 0.16.6 --wait",
  ]

}

