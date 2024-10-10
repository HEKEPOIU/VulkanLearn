# Vulkan Learns

It follow the [vulkan tutorial](https://vulkan-tutorial.com/), and use cmake for build system.

## Configuration

You need git, Vulkan Packages and cmake preinstall.
```sh
    git clone --recurse-submodules https://github.com/HEKEPOIU/VulkanLearn.git
    cd VulkanLearn/
    mkdir -p build/Debug
    cd build/Debug
    cmake ../../   
```
> ```-DCMAKE_EXPORT_COMPILE_COMMANDS=ON``` for genrate compile_commands.json, you can ln it to rootdir to get lsp work.

> ``` -D CMAKE_C_COMPILER=clang -D CMAKE_CXX_COMPILER=clang++``` for specific the compiler.

> ```-DCMAKE_BUILD_TYPE=Debug``` enable vulkan ValidationLayers.
