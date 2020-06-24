
import readline
import atexit
from os import getenv, makedirs
from os.path import expanduser, exists, join

data_home = getenv('XDG_DATA_HOME', expanduser('~/.local/share'))
data_python = join(data_home, 'python')
makedirs(data_python, exist_ok=True)
hist_path = join(data_python, 'history')

if not exists(hist_path):
    open(hist_path, 'w').close()

readline.read_history_file(hist_path)
readline.set_history_length(-1)

atexit.register(readline.write_history_file, hist_path)

print(f'history file: {hist_path}')

