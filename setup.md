## Lab setup Docker and K8S

These are the mandatory requirements
1. Virtual box
2. Internet
3. Nat addresses enabled

4. Complete internet not behind proxies - 
Docker and K8S internally, from the VM, will connect to the internet at various places to download docker images from hub.docker.com. Getting the lab setup to come up behind a proxy is a very difficult task and time consuming process. So an open internet is preferred
 
5. BIOS VT-x enabled for Virtual Machines to come up.

If the internet is open internet, then the below commands can be run as a part of the course itself

### Steps to bring up Docker and Kubernetes

If hyperv is running
Search for "turn windows feature on or off"
uncheck "Hyper-V"

------------------------------------------------------------------

Requires Virutalbox - If it is already installed then there is no need for a new setup. Else download and install from virtualbox.org

------------------------------------------------------------------
### 1. minikube

          download "minikube-windows-amd64" from https://github.com/kubernetes/minikube/releases/tag/v0.25.0

          2. rename the exe to minikube.exe

          3. put the directory where minikube is saved into the path environment variable 

------------------------------------------------------------------

### 4. minikube start
From the command prompt on windows execute "minikube start"
Please stay on C drive while doing this. Also start command prompt as an administrator

------------------------------------------------------------------
### 5. kubectl

          Download kubectl from this location
          https://storage.googleapis.com/kubernetes-release/release/v1.11.0/bin/windows/amd64/kubectl.exe
          6. put kubectl in the same location as minikube
          
          For MacOS
          curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/darwin/amd64/kubectl
          chmod +x ./kubectl
          sudo mv ./kubectl /usr/local/bin/kubectl
          
------------------------------------------------------------------          


### 7. kubectl version
From the above command prompt execute "kubectl version"
Should show both client and server versions
