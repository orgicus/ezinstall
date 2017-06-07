######################################################################
# Clean old installation
# Removes all the files Torch related coming from a prev. install
######################################################################

# Some space
echo

# Check if we are on Mac (OS X)
if [[ `uname` == 'Darwin' ]]; then
    echo 'Removing old Torch files from your Mac...'
    # Removing folders
    rm -rf ~/torch-cl/install/lib/{luarocks/,lua/,torch/,torchrocks/}
    rm -rf ~/torch-cl/install/share/{torch,cmake/torch/,lua}
    rm -rf ~/torch-cl/install/etc/{luarocks/,torchrocks/}
    rm -rf ~/torch-cl/install/include/{torch,TH,THC,lauxlib.h,lua.h,lua.hpp,luaT.h,luaconf.h,luajit.h,lualib.h,qtlua}
    rm -rf ~/.luarocks
    # Removing files
    rm -f  ~/torch-cl/install/bin/{torch,th,qlua,json2lua,lua2json,torch-lua,torch-qlua,torch-rocks,torch-rocks-admin,luajit,luarocks,macqlua,mdcat,qlua}
    rm -f  ~/torch-cl/install/lib/{*lua*,*TH*}
fi

# Check if we are on Linux (Ubuntu)
if [[ `uname` == 'Linux' ]]; then
    echo 'Removing old Torch files from your Linux...'
    # Removing folders
    sudo rm -rf ~/torch-cl/install/lib/{luarocks/,lua/,torch/,torchrocks/}
    sudo rm -rf ~/torch-cl/install/share/{torch,cmake/torch/,lua}
    sudo rm -rf ~/torch-cl/install/etc/{luarocks/,torchrocks/}
    sudo rm -rf ~/torch-cl/install/include/{torch,TH,THC,lauxlib.h,lua.h,lua.hpp,luaT.h,luaconf.h,luajit.h,lualib.h,qtlua}
    sudo rm -rf ~/.luarocks
    sudo rm -rf ~/.cache/luarocks*
    # Removing files
    sudo rm -f  ~/torch-cl/install/bin/{torch,th,qlua,json2lua,lua2json,torch-lua,torch-qlua,torch-rocks,torch-rocks-admin,luajit,luarocks,mdcat,qlua}
    sudo rm -f  ~/torch-cl/install/lib/{*lua*,*TH*}
fi

echo
echo 'All files from previous installation/s have been removed from your system.'
echo 'You can now install the new Torch7! :)'
echo