from ._version import version_info, __version__

from .dora import *

def _jupyter_nbextension_paths():
    return [{
        'section': 'notebook',
        'src': 'static',
        'dest': 'dora',
        'require': 'dora/extension'
    }]
