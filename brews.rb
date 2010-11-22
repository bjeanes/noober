dep 'brews' do
  brews = %w[
    mongodb redis mysql postgresql sphinx
    tree graphviz hub imagemagick wget v8
    gist readline bash zsh fish ack postgis
    ec2-api-tools ec2-ami-tools growlnotify
    git git-flow lame node npm webkit2png
    bash-completion wireshark wkhtmltopdf
    nmap nginx redcar ffmpeg tmux oniguruma
    pcre freeimage nmap
  ].map { |brew| dep("#{brew}.managed") }

  requires ["homebrew", "iphone tools"] + brews
end

dep 'mongodb.managed' do
  provides %w[
    mongo mongod mongodump mongoexport
    mongofiles mongoimport mongorestore
    mongos mongosniff mongostat
  ]
end

dep 'redis.managed' do
  provides %w[redis-benchmark redis-check-aof redis-check-dump redis-cli redis-server]
end

dep 'postgresql.managed' do
  provides %w[
    psql
    createdb createuser createlang
    dropdb   dropuser   droplang
  ]
end

dep 'sphinx.managed' do
  provides %w[
    spelldump
    searchd search
    indextool indexer
  ]
end

dep('graphviz.managed') { provides [] }
dep('readline.managed') { provides [] }

dep 'imagemagick.managed' do
  provides %w[
    Magick-config MagickCore-config MagickWand-config
    Wand-config animate compare composite conjure convert
    display identify import mogrify montage stream
  ]
end

dep 'postgis.managed' do
  provides %w[
    shp2pgsql
    profile_intersects.pl
    postgis_restore.pl
    postgis_proc_upgrade.pl
    pgsql2shp
    new_postgis_restore.pl
    create_undef.pl
  ]
end

dep 'ec2-api-tools.managed' do
  provides %w[
    ec2-activate-license                      ec2addgrp
    ec2-add-group                             ec2addkey
    ec2-add-keypair                           ec2addpgrp
    ec2-allocate-address                      ec2addsds
    ec2-associate-address                     ec2addsnap
    ec2-associate-dhcp-options                ec2addsubnet
    ec2-attach-volume                         ec2addtag
    ec2-attach-vpn-gateway                    ec2addvgw
    ec2-authorize                             ec2addvol
    ec2-bundle-instance                       ec2addvpc
    ec2-cancel-bundle-task                    ec2addvpn
    ec2-cancel-spot-instance-requests         ec2allocaddr
    ec2-cmd                                   ec2assocaddr
    ec2-confirm-product-instance              ec2assocdopt
    ec2-create-customer-gateway               ec2attvgw
    ec2-create-dhcp-options                   ec2attvol
    ec2-create-image                          ec2auth
    ec2-create-placement-group                ec2bundle
    ec2-create-snapshot                       ec2cbun
    ec2-create-spot-datafeed-subscription     ec2cim
    ec2-create-subnet                         ec2cpi
    ec2-create-tags                           ec2csir
    ec2-create-volume                         ec2daddr
    ec2-create-vpc                            ec2datt
    ec2-create-vpn-connection                 ec2daz
    ec2-create-vpn-gateway                    ec2dbun
    ec2-deactivate-license                    ec2dcgw
    ec2-delete-customer-gateway               ec2ddopt
    ec2-delete-dhcp-options                   ec2deactlic
    ec2-delete-group                          ec2delcgw
    ec2-delete-keypair                        ec2deldopt
    ec2-delete-placement-group                ec2delgrp
    ec2-delete-snapshot                       ec2delkey
    ec2-delete-spot-datafeed-subscription     ec2delpgrp
    ec2-delete-subnet                         ec2delsds
    ec2-delete-tags                           ec2delsnap
    ec2-delete-volume                         ec2delsubnet
    ec2-delete-vpc                            ec2deltag
    ec2-delete-vpn-connection                 ec2delvgw
    ec2-delete-vpn-gateway                    ec2delvol
    ec2-deregister                            ec2delvpc
    ec2-describe-addresses                    ec2delvpn
    ec2-describe-availability-zones           ec2dereg
    ec2-describe-bundle-tasks                 ec2detvgw
    ec2-describe-customer-gateways            ec2detvol
    ec2-describe-dhcp-options                 ec2dgrp
    ec2-describe-group                        ec2diatt
    ec2-describe-image-attribute              ec2dim
    ec2-describe-images                       ec2dimatt
    ec2-describe-instance-attribute           ec2din
    ec2-describe-instances                    ec2dinatt
    ec2-describe-keypairs                     ec2disaddr
    ec2-describe-licenses                     ec2dkey
    ec2-describe-placement-groups             ec2dlic
    ec2-describe-regions                      ec2dpgrp
    ec2-describe-reserved-instances           ec2dre
    ec2-describe-reserved-instances-offerings ec2dri
    ec2-describe-snapshot-attribute           ec2drio
    ec2-describe-snapshots                    ec2dsds
    ec2-describe-spot-datafeed-subscription   ec2dsir
    ec2-describe-spot-instance-requests       ec2dsnap
    ec2-describe-spot-price-history           ec2dsnapatt
    ec2-describe-subnets                      ec2dsph
    ec2-describe-tags                         ec2dsubnet
    ec2-describe-volumes                      ec2dtag
    ec2-describe-vpcs                         ec2dvgw
    ec2-describe-vpn-connections              ec2dvol
    ec2-describe-vpn-gateways                 ec2dvpc
    ec2-detach-volume                         ec2dvpn
    ec2-detach-vpn-gateway                    ec2fp
    ec2-disassociate-address                  ec2gcons
    ec2-fingerprint-key                       ec2gpass
    ec2-get-console-output                    ec2ikey
    ec2-get-password                          ec2kill
    ec2-import-keypair                        ec2matt
    ec2-migrate-image                         ec2miatt
    ec2-modify-image-attribute                ec2mim
    ec2-modify-instance-attribute             ec2mimatt
    ec2-modify-snapshot-attribute             ec2min
    ec2-monitor-instances                     ec2minatt
    ec2-purchase-reserved-instances-offering  ec2msnapatt
    ec2-reboot-instances                      ec2prio
    ec2-register                              ec2ratt
    ec2-release-address                       ec2reboot
    ec2-request-spot-instances                ec2reg
    ec2-reset-image-attribute                 ec2reladdr
    ec2-reset-instance-attribute              ec2revoke
    ec2-reset-snapshot-attribute              ec2riatt
    ec2-revoke                                ec2rimatt
    ec2-run-instances                         ec2rinatt
    ec2-start-instances                       ec2rsi
    ec2-stop-instances                        ec2rsnapatt
    ec2-terminate-instances                   ec2run
    ec2-unmonitor-instances                   ec2start
    ec2-version                               ec2stop
    ec2actlic                                 ec2tag
    ec2addcgw                                 ec2umin
    ec2adddopt                                ec2ver
  ]
end

dep 'ec2-ami-tools.managed' do
  provides %w[
    ec2-ami-tools-version ec2-bundle-vol        ec2-download-bundle
    ec2-migrate-manifest  ec2-upload-bundle     ec2-bundle-image
    ec2-delete-bundle     ec2-migrate-bundle    ec2-unbundle
  ]
end