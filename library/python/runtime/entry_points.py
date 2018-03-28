import __res


def repl():
    user_ns = {}
    py_main = __res.find('PY_MAIN')

    if py_main:
        py_main_split = py_main.split(':', 1)
        if len(py_main_split) == 2:
            mod_name, func_name = py_main_split
        else:
            mod_name, func_name = py_main_split[0], 'main'

        if not mod_name:
            mod_name = 'library.python.runtime.entry_points'

        try:
            import importlib
            mod = importlib.import_module(mod_name)
            user_ns = mod.__dict__
        except:
            import traceback
            traceback.print_exc()

    if py_main and '__main__' not in user_ns:
        def run(args):
            if isinstance(args, basestring):
                import shlex
                args = shlex.split(args)

            import sys
            sys.argv = [sys.argv[0]] + args
            getattr(mod, func_name)()

        user_ns['__main__'] = run

    try:
        import IPython
    except ImportError:
        import code
        code.interact(local=user_ns)
    else:
        IPython.start_ipython(user_ns=user_ns)
