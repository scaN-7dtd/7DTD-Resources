# EXTRACT GLB FILE TEXTURES

How to extract the textures from a `.glb` file using [glTF Pipeline](https://github.com/CesiumGS/gltf-pipeline).

### Steps:

1. Install [Node.js](https://nodejs.org/en/).

2. Install glTF Pipeline using the following command in CMD:

```cmd
npm install -g gltf-pipeline
```

3. Navigate to the folder containing your `.glb` file.

4. Use the following command (replace `filename` with the name of your file):

```cmd
gltf-pipeline -i filename.glb -t
```
