# extract-unity-package-action 

This github action uses [Unity Package Exporter by Lachee](https://github.com/Lachee/Unity-Package-Exporter.git) to export Unity Project as a .unitypackage file. See the following example for how to use it:

```yaml
on: [push]

jobs:
  extract_unity_package:
    runs-on: ubuntu-latest
    name: extract_unity_package
    steps:
    - name: Checkout
      uses: actions/checkout@v2
    - name: Extract unity package
      id: extract_unity_package
      uses: FrostBanditTeam/extract-unity-package-action@1
      with:
        #Specify the unity project path, relative to the repo root.
        unityProjectPath: './TestProject'
        #Optional: Set the directory to package, relative to the project.
        #packagePath: 'Assets'
        #Optional: Set the output path for the package.
        #outputPackagePath: './artifacts/output.unitypackage'
    - name: Upload artifact
      uses: actions/upload-artifact@v2
      with:
        name: Output package
        path: ${{ steps.extract_unity_package.outputs.artifactsPath }}
```