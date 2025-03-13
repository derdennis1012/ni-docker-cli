# container_manager.rb
class ContainerManager < Formula
    include Language::Python::Virtualenv
  
    desc "CLI-Tool, um Docker-Container (Nextcloud, MariaDB, Redis usw.) interaktiv zu erstellen"
    homepage "https://github.com/deinname/container_manager"
    url "https://github.com/deinname/container_manager/releases/download/v0.1.0/container_manager-0.1.0.tar.gz"
    sha256 "DEIN_SHA_256_WERT_HIER"
    license "MIT"
  
    depends_on "python@3.9"  # Oder eine andere Python-Version, die du unterstützen möchtest
  
    def install
      # Baut dein Python-Projekt in einer virtuellen Umgebung
      virtualenv_install_with_resources
    end
  
    test do
      # Ein einfacher Test, um z.B. die --help-Ausgabe zu prüfen
      system bin/"container_manager", "--help"
    end
  end
  