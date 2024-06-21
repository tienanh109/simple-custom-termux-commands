#!/bin/bash

# Tạo thư mục ~/bin nếu chưa tồn tại
mkdir -p ~/bin

# Thêm ~/bin vào PATH nếu chưa có
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc
    source ~/.bashrc
fi

# Tạo script tùy chỉnh tienanh109
cat << 'EOF' > ~/bin/tienanh109
#!/bin/bash
echo -e "\e[31mH\e[32me\e[33ml\e[34ml\e[35mo\e[36m! \e[37mThis is the reply from command \e[31mt\e[32mi\e[33me\e[34mn\e[35ma\e[36mn\e[37mh\e[31m1\e[32m0\e[33m9\e[37m!"
EOF

# Cấp quyền thực thi cho script
chmod +x ~/bin/tienanh109

echo "Setup completed! You can now use the command 'tienanh109'."
