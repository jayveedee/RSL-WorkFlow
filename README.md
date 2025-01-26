# RSL-WorkFlow
Simple project illustrating how to use Github Actions WorkFlow with RSL.

## How it works
Add your ``.rsl`` files to the ``rsl`` directory.

### Commands used for RSL workflow

| Command               | Description                                                       |
|-----------------------|-------------------------------------------------------------------|
| rsltc `<file>`        | Type check                                                        |
| rsltc -m `<file>`     | Type check and compiles to SML                                    |
| sml < `<file>`        | Runs compiled `.sml` file                                         |

# References

- [RSL (RAISE Specification Language) & RAISE (Rigorous Approach to Industrial Software Engineering)](https://raisetools.github.io/)
- [RSLTC (RAISE Specification Language Type Checker)](https://github.com/raisetools/rsltc)
- [SML (Standard Meta Language)](https://smlfamily.github.io/)
