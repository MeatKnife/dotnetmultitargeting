#
# Cookbook Name:: DotNetMultiTargeting
# Recipe:: default
#

cookbook_file "netfx_dtp.cab" do
	path "c:\\windows\\temp\\netfx_dtp.cab"
	action :create_if_missing
end

cookbook_file "netfx_dtp.msi" do
	path "c:\\windows\\temp\\netfx_dtp.msi"
	action :create_if_missing
end

execute "install_it" do
	command "c:\\windows\\temp\\netfx_dtp.msi EXTUI=1"
end
