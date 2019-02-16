apt_repository 'nginx' do 
    uri     'http://nginx.org/packages/ubuntu/ Bionic Beaver nginx'
    components ['nginx']
end    

execute 'update' do
    command 'apt update'
    action :run  
end    

apt_package 'nginx' do 
    action :install
end 

service 'nginx' do 
    action :enable
end    

service 'nginx' do 
    action :start
end    

file '/tmp/teste5.txt' do 
    action :create
end     
 execute '/tmp/teste3.1.sh' do 
    action :run 
 end    
