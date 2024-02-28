# A coulpe command i ran to use Candy Machine

C:\Users\Hp\sugar
solana-keygen new --outfile C:\Users\Hp\sugar\Owner.json
solana-keygen new --outfile C:\Users\Hp\sugar\Creator.json

solana config set --keypair C:\Users\Hp\sugar\Owner.json

# Candy Machine Windows Edition! Launch Solana NFT Collection with Metaplex Candy Machine V3 and Sugar

# Install Git
# https://git-scm.com/download/win
git --version

# Install Node
# https://nodejs.org/en/download
npm --version

# Install Solana Tool Suite
# https://docs.solana.com/cli/install-solana-cli-tools#windows
cmd /c "curl https://release.solana.com/v1.15.2/solana-install-init-x86_64-pc-windows-msvc.exe --output C:\solana-install-tmp\solana-install-init.exe --create-dirs"
solana --version
solana-keygen --version

# Download Sugar
# https://github.com/metaplex-foundation/sugar/releases/tag/sugar-cmv3-alpha.3
./sugar --version

# Get current directory
# C:\Users\User\Desktop\Metaplex
pwd

# <Owner Wallet Public Key>
# <Owner Wallet Phrase>
solana-keygen new --outfile C:\Users\User\Desktop\Metaplex\Owner.json

# <Creator Wallet Public Key>
# <Creator Wallet Phrase>
solana-keygen new --outfile C:\Users\User\Desktop\Metaplex\Creator.json

solana config set --keypair C:\Users\User\Desktop\Metaplex\Owner.json
solana config set --url https://metaplex.devnet.rpcpool.com
solana config get

solana airdrop 1 <Owner Wallet Public Key> --url https://api.devnet.solana.com
solana airdrop 1 <Creator Wallet Public Key> --url https://api.devnet.solana.com
solana airdrop 1 <Minting Wallet Public Key> --url https://api.devnet.solana.com

solana balance <Owner Wallet Public Key>
solana balance <Creator Wallet Public Key>

# Download Metaplex Sample NFT Collection
# https://docs.metaplex.com/programs/candy-machine/how-to-guides/my-first-candy-machine-part1#set-up-your-project
# https://docs.metaplex.com/assets/files/assets-ff6bd873ecd07b49c86faf3c7aab82d2.zip
Invoke-WebRequest -Uri https://docs.metaplex.com/assets/files/assets-ff6bd873ecd07b49c86faf3c7aab82d2.zip -OutFile ./assets.zip

Expand-Archive ./assets.zip -DestinationPath ./

# Create Candy Machine Config File
./sugar create-config

# Upload assets
./sugar upload

# Deploy Candy Machine
# <Candy Machine ID>
./sugar deploy

# Verify Candy Machine Deployment and Setup
./sugar verify

# Add Candy Guards
./sugar guard add
./sugar guard show

# Setup KeyStrokes Candy Machine UI
Expand-Archive "./KeyStrokes Candy Machine UI - V1.zip" -DestinationPath ./
cd '.\KeyStrokes Candy Machine UI - V1\'
cp .\.env.example .env
# Update .env file with Candy Machine
npm install
npm run dev