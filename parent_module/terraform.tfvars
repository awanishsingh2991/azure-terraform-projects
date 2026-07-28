rgs = {
  rg1 = {
    name     = "rg-test1"
    location = "centralus"
  }
}
vnet = {
  vnet1 = {
    name     = "vnet-test11"
    location = "centralus"
    rgn      = "rg-test1"
    as       = ["10.0.0.0/16"]
  }
}
subid = {
  sub1 = {
    name = "frontend-subnet"
    rgn  = "rg-test1"
    vnn  = "vnet-test11"
    ap   = ["10.0.1.0/24"]
  }
  sub2 = {
    name = "backend-subnet"
    rgn  = "rg-test1"
    vnn  = "vnet-test11"
    ap   = ["10.0.2.0/24"]
  }
}
pub-ip = {
  pubip1 = {
    name     = "pipvm-1"
    location = "centralus"
    rgn      = "rg-test1"
    am       = "Static"
  }
  pubip2 = {
    name     = "pipvm-2"
    location = "centralus"
    rgn      = "rg-test1"
    am       = "Static"
  }
}
net-sec-group = {
  nsg1 = {
    nsg_name = "vm1-nic"
    name     = "pipvm-1"
    location = "centralus"
    rgn      = "rg-test1"
    sec_name = "nsg-1"
  }
  nsg2 = {
    nsg_name = "vm2-nic"
    name     = "pipvm-2"
    location = "centralus"
    rgn      = "rg-test1"
    sec_name = "nsg-2"
  }
}
nic = {
  nic1 = {
    name      = "vm1-nic"
    location  = "centralus"
    rgn       = "rg-test1"
    ipname    = "internal"
    pipaa     = "Dynamic"
    vnn       = "vnet-test11"
    sub-name  = "backend-subnet"
    public_ip = "pipvm-1"
  }
  nic2 = {
    name      = "vm2-nic"
    location  = "centralus"
    rgn       = "rg-test1"
    ipname    = "internal"
    pipaa     = "Dynamic"
    vnn       = "vnet-test11"
    sub-name  = "frontend-subnet"
    public_ip = "pipvm-2"
  }
}
virt-machine = {
  linux1 = {
    int_name      = "vm1-nic"
    name          = "vir-linux1"
    rgn           = "rg-test1"
    loc           = "centralus"
    size          = "Standard_DC2s_v3"
    auser         = "adminuser"
    apassword     = "Awanish123456"
    caching       = "ReadWrite"
    stor_acc_type = "Standard_LRS"
    publisher     = "Canonical"
    offer         = "0001-com-ubuntu-server-jammy"
    sku           = "22_04-lts"
    version       = "latest"
  }
  linux2 = {
    int_name      = "vm2-nic"
    name          = "vir-linux2"
    rgn           = "rg-test1"
    loc           = "centralus"
    size          = "Standard_DC2s_v3"
    auser         = "adminuser1"
    apassword     = "Awanish123456"
    caching       = "ReadWrite"
    stor_acc_type = "Standard_LRS"
    publisher     = "Canonical"
    offer         = "0001-com-ubuntu-server-jammy"
    sku           = "22_04-lts"
    version       = "latest"
  }
}
