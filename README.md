# obs-contour-shader

Shader that adds a contour to non-alpha screen section.

This is a [obs-shader-filter](https://obsproject.com/forum/resources/obs-shaderfilter.1736/) compatible shader.

It adds a contour line around the non-alpha screen section. 
Works great to add a contour after a chroma background removal filter.

![video-introduction](https://github.com/user-attachments/assets/49184bfd-83a5-47b7-a36d-cbaa08fa7a5b)

## Usage

- Install the [obs-shader-filter](https://obsproject.com/forum/resources/obs-shaderfilter.1736/) plugin in [OBS](https://obsproject.com/)
- Use a green screen filter or a [background removal filter plugin](https://obsproject.com/forum/resources/background-removal-virtual-green-screen-low-light-enhance.1260/)
- Clone this repository or download `contour.shader`.
- Add a "User-defined shared" filter to your source.
- Set `contour.shader` as the `Shader text file`.
