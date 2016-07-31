import os

c.NotebookApp.base_url = os.environ.get('JUPYTER_BASE_URL', '/')
c.NotebookApp.password = os.environ.get('JUPYTER_PASSWD', None)

c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.port = 5000

c.NotebookApp.open_browser = False
