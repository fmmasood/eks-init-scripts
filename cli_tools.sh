cd ~
sudo yum groupinstall 'Development Tools' -y

#ruby -e "`curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install`" 
#echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin/:/home/ec2-user/.nvm/versions/node/v10.16.3/bin:/home/ec2-user/.rvm/gems/ruby-2.6.3/bin:/home/ec2-user/.rvm/gems/ruby-2.6.3@global/bin:/home/ec2-user/.rvm/rubies/ruby-2.6.3/bin:/home/ec2-user/.rvm/gems/ruby-2.6.3/bin:/home/ec2-user/.rvm/gems/ruby-2.6.3@global/bin:/home/ec2-user/.rvm/rubies/ruby-2.6.3/bin:/usr/local/bin:/bin:/usr/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:/home/ec2-user/.rvm/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:/home/ec2-user/.rvm/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin"' >>~/.bashrc
#echo 'export MANPATH="/home/linuxbrew/.linuxbrew/share/man:/home/ec2-user/.nvm/versions/node/v10.16.3/share/man:/home/ec2-user/.rvm/rubies/ruby-2.6.3/share/man:/usr/local/share/man:/usr/share/man:/home/ec2-user/.rvm/man"' >>~/.bashrc
#echo 'export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:"' >> ~/.bashrc
#source  ~/.bashrc
#brew tap weaveworks/tap
#brew install kubernetes-cli weaveworks/tap/eksctl

echo ">>> install jq"
sudo yum install jq -y

echo ">>> update awscli "
pip3 install --upgrade --user awscli

echo ">>> update kubectl"
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

echo ">>> chmod +x kubectl"
chmod +x kubectl 
export PATH=$PWD/:$PATH
source  ~/.bash_profile

echo ">>> update kubeconfig "
aws eks update-kubeconfig --name 'EKS-Lab'

