#!/bin/bash

curl -s https://raw.githubusercontent.com/oximouse/Airdrop/main/Logo.sh | bash
sleep 5

echo "INICHAIN NODE"
sleep 2

# 1. Setup Firewall
sudo ufw allow ssh
sudo ufw enable
sudo ufw status

# 2. Unduh File Miner IniChain
echo "Mengunduh file miner..."
sudo wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64

# 3. Berikan Izin Eksekusi
echo "Memberikan izin eksekusi pada file..."
chmod +x iniminer-linux-x64

# 4. Meminta Input Wallet dan Worker
echo "Masukkan address Anda:"
read wallet
echo "Masukkan nama worker Anda:"
read worker

# 5. Jalankan Miner dalam Sesi Screen Baru
echo "Done Sir. Cek gunakan 'screen -r inichain' & keluar gunakan CTRL+AD"
./iniminer-linux-x64 --pool stratum+tcp://$wallet.$worker@pool-core-testnet.inichain.com:32672 --cpu-devices 2
