# uname -a (Check which system is installed)
# which gpg (Check the installation)
# gpg --version(Check the GPG version)
# gpg --full-generate-key (Generate a key pair)
# gpg --list-keys (Lists the keyring)
# gpg --armor --export (This command exports the public key)
# gpg --list-secret-keys --keyid-format=long ( This command lists the private keys)
# hash copied from the private key A13BBAAB40C5844C
# gpg --armor --export-secret-keys A13BBAAB40C5844C  (este comando es el que exporta nuestra key privada)