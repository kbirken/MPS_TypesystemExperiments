# MPS_TypesystemExperiments

This is an example project showing that `TypecheckingFacade.getTypeOf()` doesn't work in
checking rules or inference rules,
if the argument of `getTypeOf()` is in a different root node than the node under check.
More specifically: It work's in the MPS editor, but not when executing it via `Check Model`. 

How to reproduce:
- checkout the repo
- open it with MPS 2021.1 and build the language
- run `Check Model` on the model in `typesystem_examples.sandbox`
- two errors will be shown, which aren't shown in the editor of `MyClass2'
