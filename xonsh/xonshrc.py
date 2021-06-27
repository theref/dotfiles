import sys
from pathlib import Path
sys.path.append(str(Path.home()))
import subprocess


paths = {
    'darwin': [
        [$HOME, 'bin'],
        [$HOME, '.local', 'bin'],
        ['/usr', 'local', 'bin'],
        [$HOME, '.pyenv', 'bin'],
        ['/opt', 'homebrew', 'bin']
    ]
}

def path_strings(paths):
    """
    A function to generate a list of strings representing paths.
    Parameters
    ----------
    paths : list
        of lists - each containing a string for every element in the path
    Returns
    -------
    list
        of path strings
    """
    return [str(Path(*path)) for path in paths if Path(*path).exists]

$PATH[:0] = (path_strings(paths[sys.platform]))


xontrib load coreutils
xontrib load vox
xontrib load autovox
xontrib load powerline2

@events.autovox_policy
def vox_policy(path, **_):
    venv = Path($VIRTUALENV_HOME, path.name)
    if venv.exists():
        return venv


$PL_PROMPT = 'history'
$PL_RPROMPT = '!'
$PL_TOOLBAR = 'who>cwd>branch>virtualenv'