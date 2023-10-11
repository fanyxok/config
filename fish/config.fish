
# greeting
if status --is-login
  echo "Hello, (whoami)!"
end

# set PATH and so on 
set -gx PATH $PATH /home/fanyx/app/gcc-arm-none-eabi-10-2020-q4-major/bin
set -gx CC /home/fanyx/app/gcc-arm-none-eabi-10-2020-q4-major/bin/arm-none-eabi-gcc
set -gx PATH $PATH /home/fanyx/tools/nvim/bin
# (wsl only) set proxy using default clash port
function set_proxy
    set -xg hostip (cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
    set -xg https_proxy "http://$hostip:7890"
    set -xg http_proxy "http://$hostip:7890"
    printf 'https proxy = %s\nhttp  proxy = %s\n' "$https_proxy" "$http_proxy"
end

function unset_proxy
  set -e https_proxy 
  set -e http_proxy 
  printf 'https proxy = %s\nhttp  proxy = %s\n' "$https_proxy" "$http_proxy"
end

alias gb="git branch"
alias gc="git checkout"

function rename_echo_two -a prefix 
  mv /mnt/d/binary/echo_two.hex  /mnt/d/binary/CC-v$prefix.hex 
  mv /mnt/d/binary/echo_two.elf  /mnt/d/binary/CC-v$prefix.elf
  mv /mnt/d/binary/echo_two.bin  /mnt/d/binary/CC-v$prefix.bin
  mv /mnt/d/binary/echo_two.map  /mnt/d/binary/CC-v$prefix.map
  mv /mnt/d/binary/echo_two.list  /mnt/d/binary/CC-v$prefix.list
end
