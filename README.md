# liblab-dev-env
UTC Library LibLab Development Environment

Install:
1. Install VirtualBox https://www.virtualbox.org/wiki/Downloads
2. Install Vagrant https://www.vagrantup.com/
3. Install Git https://git-scm.com/ (we will use git bash - use CTRL+SHIFT+INS to paste OR right-click)
4. From home directory (~/ in git bash shell), clone the liblab code (git clone https://github.com/utclibrary/liblab.git)
5. Clone this repo (git clone https://github.com/utclibrary/liblab-dev-env )
6. cd liblab-dev-env
7. vagrant plugin install vagrant-vbguest
8. vagrant up
9. go to 192.168.33.10 OR localhost:8080 (in web browser)

Notes:
-  ~/liblab/ is root for html
- To stop: vagrant halt
- To restart: vagrant up > vagrant provision
- You may also vagrant destroy to completely rebuild the server
