How to run
----------

1. Generate a password according to [the documentation][1].

[1]: http://jupyter-notebook.readthedocs.io/en/latest/public_server.html#preparing-a-hashed-password

        python -c 'from notebook.auth import passwd; print(passwd())'

2. Run the container.

        docker run -d -p 8080:5000 -e JUPYTER_PASSWD='sha1:fdfcbad4bdda:de8f9db6eb247977ec7abb66fa292bcbf804bc85' vifon/jupyter

**Optional**

If you want to use a host directory for the notebook storage, bind it
to the container using `-v /SOME/HOST/PATH:/notebook`.

If you want to host the notebook on a non-root site URL, add `-e
JUPYTER_BASE_URL=/your/site/url/`.
