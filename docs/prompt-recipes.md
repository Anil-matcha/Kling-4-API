# Kling Video Prompt Recipes

These original examples turn common video goals into prompts that can be sent through this repository's text-to-video and image-to-video methods. The library currently calls MuAPI Kling 3.0 Standard and Pro routes, so confirm available parameters and model behavior in the [MuAPI API reference](https://muapi.ai/docs/api-reference).

The collection at [flaqai/awesome-kling-4-0](https://github.com/flaqai/awesome-kling-4-0) inspired the use of practical categories such as product films, UGC, cinematic scenes, and reference-led animation. The examples below are independently written; they do not reproduce that project's prompt copy or assets.

## A simple prompt structure

Build the prompt in this order, then remove anything that does not affect the result:

1. **Format and goal:** duration, orientation, and intended use.
2. **Subject anchors:** visible details that should remain stable.
3. **Scene:** location, time, light, and important objects.
4. **Action:** one readable action, with a beginning and payoff.
5. **Camera:** framing, movement, and where it settles.
6. **Constraints:** continuity or visual errors to avoid.

For image-to-video, describe how the supplied image should move. Avoid asking the model to redesign details that the image is meant to preserve.

## Product: ceramic tea pour

```text
Create a 7-second, 16:9 premium product film. Keep the matte ivory ceramic teapot,
single dark-blue handle, and small brass lid knob unchanged throughout. On a pale
stone table beside a sunlit window, a thin stream of amber tea pours into one clear
glass cup. Begin with a close side view, then make a slow, smooth push toward the
cup as steam drifts upward. End with the filled cup and teapot both in frame. Soft
morning light, realistic reflections, uncluttered background. No extra cups, no
changing handle or lid shape, no labels, no on-screen text.
```

## Social video: window herb garden

```text
Create a natural 8-second vertical video for a home gardening tip. A person in a
plain green apron turns one small basil pot toward the window and points to a new
leaf. Keep the same hands, apron, pot, and plant in every frame. Use a steady
handheld phone camera at counter height, with gentle daylight and a lived-in
kitchen behind it. The gesture is relaxed and complete; finish on a clear view of
the leaf. No fast cuts, extra fingers, brand marks, captions, or exaggerated
before-and-after changes.
```

## Cinematic: last train

```text
Create a 10-second cinematic scene at a quiet station at night. One traveler in a
rust-colored coat stands under a white platform clock, holding a folded paper map.
Keep the coat, map, and traveler consistent. Start in a wide shot with the empty
track leading into the distance. The traveler hears a train approaching, looks
toward the tunnel, and takes one step forward. Track slowly from behind and settle
over the traveler’s shoulder as warm headlights appear far away. Wet platform tiles
reflect the light; restrained blue night tones with a warm highlight. No other
people, readable signs, sudden camera cuts, or changes to the map.
```

## Image-to-video: preserve the reference

When an input image already defines the framing or product, assign it a clear role and request limited motion. For example:

```python
job = api.image_to_video(
    prompt=(
        "Animate the supplied still as a 5-second product shot. Preserve the bottle's "
        "label, cap, proportions, and position. Add a slow camera push-in and a few "
        "small water droplets moving down the glass; keep the background unchanged. "
        "End on the same front-facing label. No new text or objects."
    ),
    image_url="https://example.com/product.jpg",
    tier="pro",
    aspect_ratio="16:9",
    duration=5,
)
```

Use a public image URL that the generation service can fetch. Parameter names and accepted values depend on the selected route; consult the provider docs before using optional fields.

## Iteration tips

- Change one variable per rerun, such as camera speed or action timing, so the cause of an improvement is clear.
- If a shot feels busy, keep the primary action and remove competing motion.
- For product work, repeat the exact shape, color, and label details that must remain fixed.
- For reference-led work, distinguish what the image locks from what should animate.
- Review generated frames for visual defects, text, identity changes, and rights concerns before publishing.
