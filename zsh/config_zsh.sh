set -e

sudo apt -y install zsh git wget

echo "start to install ohmyzsh..."
if [ ! -d ohmyzsh ]; then
    git clone https://github.com.cnpmjs.org/ohmyzsh/ohmyzsh.git && chmod +x ohmyzsh/tools/install_ohmyzsh.sh && ./ohmyzsh/tools/install.sh
    rm -rfv ohmyzsh
fi


echo "start to install antigen for ohmyzsh..."
ANTIGEN_INSTALL_DIR="/home/hl/.oh-my-zsh/tools"
if [ ! -d ${ANTIGEN_INSTALL_DIR} ]; then
    echo "${ANTIGEN_INSTALL_DIR} not exist, so make it..."
    mkdir -p ${ANTIGEN_INSTALL_DIR}
fi
# rm -rfv ${ANTIGEN_INSTALL_DIR}/antigen
git clone https://github.com.cnpmjs.org/zsh-users/antigen.git ${ANTIGEN_INSTALL_DIR}/antigen
echo "antigen install over..."

cp -v ./.zshrc ~

chsh -s /bin/zsh
