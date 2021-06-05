# docker-mdns-repeater
Allow docker containers in virtual networks to send/receive mdns broadcast messages

**NOTE**: Archiving this since I moved to [Multus](https://github.com/k8s-at-home/charts/tree/master/charts/stable/multus) and the
[k8s community](https://github.com/k8s-at-home). I will not delete it since it was used by others
but please notice that I am also dissabling the weekly builds since the trigger docker pull limit errors and I do not want the spam nor have the
interest to upgrade the CI to use the Github container registry. IF there is interest of others please contact me in the k8s-at-home Discord.

Original sources from https://bitbucket.org/geekman/mdns-repeater/raw/28ecc2ab9a0e26c73148711c867d9d2b5dafff91/mdns-repeater.c
