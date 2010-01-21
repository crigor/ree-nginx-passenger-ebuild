SUMMARY
=======
This is mini-overlay for native (ebuild) install latest version of Ruby Enterprise Edition and nginx with passenger on Gentoo Linux.

Versions
--------
Ruby-Enterprise: 1.8.7.2010.01

Nginx: 0.7.64

Passenger: 2.2.9


Uniq feature? :)
---------------
Added patchset to passenger and fully removed from him 'X-Powered-By:' header and changing 'Server:' to be simply 'nginx'.
Before all this header 'X-Powered-By:' always be 'Phusion Passenger (mod_rails/mod_rack) 2.2.9' and header 'Server:' be 'nginx/0.7.64 + Phusion Passenger 2.2.9 (mod_rails/mod_rack)' even if server token will be off.


INSTALL
=======
1. Add in to make.conf local overlay (if doesn't exist)
        echo "PORTDIR_OVERLAY=\"/usr/local/portage\"" | sudo tee -a /etc/make.conf

2. Clone the git repo
        sudo git clone git://github.com/Deep-Ocean/ree-nginx-passenger-ebuild.git /usr/local/portage

3. Check use flags and fetch sources (if not - change use flags, add keyword unmask to /etc/portage/package.keywords)
        sudo emerge -fpv ruby-enterprise nginx www-misc/passenger

4. If all ok - merge
        sudo emerge ruby-enterprise nginx www-misc/passenger

5. Select needs profile
        sudo eselect ruby set rubyee

Thats all.
----------
Are you happy? I - yes.



p.s.
Sorry for my bad english.
