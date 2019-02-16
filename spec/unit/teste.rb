require 'chefspec'

describe 'teste5::teste' do 
    let(:chef_run) do 
        ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '18.04') do |node|
        end.converge(described_recipe)
    end
       

    it 'adds repositorio nginx' do
      expect(chef_run).to add_apt_repository ('nginx')
    end 

    it 'depois de add fazer update' do 
        expect(chef_run).to run_execute('update')
    end    
    
    it 'após update dos pacotes realizado instalação' do
        expect(chef_run).to install_apt_package('nginx') 
    end 
    
    it 'agora iniciar o serviço' do 
        expect(chef_run).to enable_service('nginx') 
    end 
    
    it 'startando serviço' do 
        expect(chef_run).to start_service('nginx')
    end
    
    it 'criando pasta no diretorio tmp' do 
        expect(chef_run).to create_file('/tmp/teste5.txt')
    end    

    it 'executando script' do 
        expect(chef_run).to run_execute('/tmp/teste3.1.sh')
    end    

end    
