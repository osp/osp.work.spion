#!/www/mirror/jailed/spion.me/home/spion/cgi-bin/osp.work.spion/spion.me/spion_env/bin/python

# setup the virtualenv
import os
os.environ.setdefault('PATH', '/bin:/usr/bin')
os.environ['PATH'] = '/www/mirror/jailed/spion.me/home/spion/cgi-bin/osp.work.spion/spion.me/spion_env/bin:' + os.environ['PATH']
os.environ['VIRTUAL_ENV'] = '/www/mirror/jailed/spion.me/home/spion/cgi-bin/osp.work.spion/spion.me/spion_env/bin'
os.environ['PYTHON_EGG_CACHE'] = '/www/mirror/jailed/spion.me/home/spion/cgi-bin/osp.work.spion/spion.me/spion_env/bin'

os.chdir('/www/mirror/jailed/spion.me/home/spion/cgi-bin/osp.work.spion/spion.me/spion')
import sys

# Add a custom Python path.
sys.path.insert(0, "/www/mirror/jailed/spion.me/home/spion/cgi-bin/osp.work.spion/spion.me/spion/")

# Set the DJANGO_SETTINGS_MODULE environment variable  to the file in my
# application directory with the db settings etc.
# (filename minus the extension ".py")
os.environ['DJANGO_SETTINGS_MODULE'] = "settings"

from django.core.servers.fastcgi import runfastcgi
runfastcgi(method="threaded", daemonize="false")