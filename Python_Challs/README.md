# README.md

Note the Python version. Some challenges have different Python version, like Python2. In default, we use Python3.

xintd is also used to setup environment.

## FQA

Q: how to use my own Python file?

A: replace `1by1.py` in `files/` folder to your Python file, and change the file name in `ctf.xintd` file.



Q: what if the Python file open a port and listen to it?

A: you don't need `xintd` then. Change the command in `Dockerfile` to your Python file directly. For example:

```dockerfile
CMD ["python3", "my_file.py"]
```

Configure the port of your python file to `1337`.



Q: how about `flask` web application?

A: likely to the previous question, you don't need `xintd` then. Add `flask` and `gunicorn` to `requirements.txt` or add them to `Dockerfile` like:

```dockerfile
RUN pip3 --no-cache-dir install flask gunicorn
```

Change the command in `Dockerfile` as well:

```dockerfile
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:1337", "app:app"]
```

In this example, the python file is named to `app.py`.

