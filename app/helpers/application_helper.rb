# app/helpers/application_helper.rb
module ApplicationHelper
  # Seus métodos existentes...
  
  # === NOVOS MÉTODOS PARA ADMINISTRADOR ===
  
  # Método principal (use este nas novas views)
  def current_administrador
    # O Devise já fornece este método automaticamente
    # Esta é apenas uma wrapper para clareza
    current_administrador
  end
  
  # Método de compatibilidade (mantenha para views antigas)
  def current_admin
    current_administrador
  end
  
  # Verificação de login (principal)
  def administrador_signed_in?
    administrador_signed_in?
  end
  
  # Verificação de login (compatibilidade)
  def admin_signed_in?
    administrador_signed_in?
  end
  
  # Helper para links de login/logout
  def administrador_login_logout
    if administrador_signed_in?
      link_to "Sair", destroy_administrador_session_path, method: :delete
    else
      link_to "Área Admin", new_administrador_session_path
    end
  end
  
  # Verifica se está em área administrativa
  def in_admin_area?
    controller_path.start_with?('admin/')
  end
  
  # Layout específico para admin
  def admin_layout?
    in_admin_area? && administrador_signed_in?
  end
end