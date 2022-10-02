function update --description 'alias update=cpm U && flatpak update'
  cpm U && flatpak update $argv; 
end
