# obs-contour-shader

Shader that adds a contour to non-alpha screen section.

This is a [obs-shader-filter](https://obsproject.com/forum/resources/obs-shaderfilter.1736/) compatible shader.

It adds a contour line around the non-alpha screen section. 
Works great to add a contour after a chroma background removal filter.

## Usage

- Clone this repository or download `contour.shader`.
- Add a "User-defined shared" filter to your source.
- Set `contour.shader` as the `Shader text file`.