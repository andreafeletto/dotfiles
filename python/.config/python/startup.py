
import readline
import atexit
from os.path import expanduser
from functools import partial

hist_path = expanduser('~/.local/share/python')

try:
    readline.read_history_file(hist_path)
    readline.set_history_length(-1)
except FileNotFoundError:
    pass

atexit.register(readline.write_history_file, hist_path)

print(f'Saving history at {hist_path}')

