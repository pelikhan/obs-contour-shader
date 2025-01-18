uniform float4 edge_color = {0.5, 0.0, 0.5, 1.0};
uniform int samples<
    string label = "Samples";
    string widget_type = "slider";
    int minimum = 2;
    int maximum = 32;
    int step = 1;
> = 16;
uniform int samples_threshold<
    string label = "Samples Threshold";
    string widget_type = "slider";
    int minimum = 0;
    int maximum = 8;
    int step = 1;
> = 4;
uniform float alpha_threshold<
    string label = "Alpha Threshold";
    string widget_type = "slider";
    float minimum = 0.0;
    float maximum = 1.0;
    float step = .01;
> = 0;

float4 mainImage(VertData v_in) : TARGET
{
	float4 c = image.Sample(textureSampler, v_in.uv);
	
    // this effect assumes the image has been through a chrome-key kind of effect
    // and looks for the boundary of transparent pixels
    // fetch the neightborhood and paint white if it is not full white or transparent
    int transparents = 0;
    const int n = samples;
    [loop] for (int i = 0; i < n; i++) {
        [loop] for (int j = 0; j < n; j++) {
            float4 pix = image.Sample(textureSampler, v_in.uv + float2(i * uv_pixel_interval.x, j * uv_pixel_interval.y));
            if (pix.a <= alpha_threshold) transparents += 1;
        }
    }
    // skip if no transparent pixesl
    const int error = samples_threshold;
    if (!(transparents < error * error) &&  !(transparents > n * n - error)) {
        c = edge_color;
    }
    return c;
}
