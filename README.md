# MPS_TypesystemExperiments

This is an example project showing that `TypecheckingFacade.getTypeOf()` doesn't work in a checking rule,
if the argument of `getTypeOf()` is in a different root node than the node under check.
More specifically: It work's in the MPS editor, but not when executing it via `Check Model`. 

How to reproduce:
- checkout the repo
- open it with MPS 2021.1 and build the language
- run `Check Model` on the model in `typesystem_examples.sandbox`
- an error will be shown, which isn't shown in the editor of `MyClass2'
