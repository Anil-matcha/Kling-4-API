<div align="center">

# Kling 4 API

### Python SDK and practical video-generation examples for MuAPI

[![Powered by MuAPI](https://img.shields.io/badge/Powered%20by-MuAPI-6366f1?style=flat-square)](https://muapi.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/)
[![Text-to-video](https://img.shields.io/badge/workflow-text--to--video-8250df)](#text-to-video)
[![Image-to-video](https://img.shields.io/badge/workflow-image--to--video-1f883d)](#image-to-video)

[Quick start](#quick-start) · [Python SDK](#python-sdk) · [Prompt guide](#prompt-recipes) · [API routes](#supported-routes) · [FAQ](#faq)

</div>

Use a small Python client to submit text-to-video or image-to-video jobs through MuAPI, then poll for the result. This repository includes setup instructions, Python and cURL examples, and original prompt recipes for product shots, social clips, and cinematic scenes.

> **Model and route note:** The client currently calls MuAPI's Kling 3.0 Standard and Pro endpoints. “Kling 4 API” is the repository's project name; it does not mean these code examples call a Kling 4.0 endpoint. Check the live [MuAPI Kling page](https://muapi.ai/kling-4) and [API reference](https://muapi.ai/docs/api-reference) for current model availability, parameters, and response formats.

## Contents

- [What is included](#what-is-included)
- [Quick start](#quick-start)
- [Text-to-video](#text-to-video)
- [Image-to-video](#image-to-video)
- [Prompt recipes](#prompt-recipes)
- [cURL workflow](#curl-workflow)
- [Supported routes](#supported-routes)
- [Troubleshooting](#troubleshooting)
- [FAQ](#faq)
- [Related projects](#related-projects)
- [License](#license)

## What is included

- A lightweight `KlingAPI` Python client for submitting jobs and polling results.
- Text-to-video and image-to-video examples in Python.
- A cURL example for submitting a generation request.
- A separate [prompt recipe guide](docs/prompt-recipes.md) with structured examples and iteration tips.
- Direct calls to the MuAPI API, with the API key sent in the `x-api-key` header.

## Quick start

### Requirements

- Python 3.9 or newer
- A MuAPI account and API key
- For image-to-video, an image URL that the generation service can access

### Install

```bash
git clone https://github.com/Anil-matcha/Kling-4-API.git
cd Kling-4-API
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env
```

Add your key to `.env`:

```dotenv
MUAPI_API_KEY=your_muapi_api_key
```

The client loads this value at startup. You can also pass `api_key` directly when constructing `KlingAPI`.

## Text-to-video

Describe the scene and the main movement in the prompt. Optional fields such as `duration` and `aspect_ratio` are passed through to the selected provider route; confirm accepted values in the live API documentation.

```python
from kling_api import KlingAPI

api = KlingAPI()
job = api.text_to_video(
    "A red fox crosses a snowy forest clearing at dawn. "
    "The camera tracks slowly from left to right and settles as the fox looks back.",
    tier="pro",
    aspect_ratio="16:9",
    duration=5,
)

result = api.wait_for_completion(job["request_id"])
print(result)
```

Choose `tier="standard"` or `tier="pro"`. The initial response contains a `request_id` used to check the result.

## Image-to-video

Use image-to-video when a supplied image should establish the opening composition, product, or subject. Tell the model what should move and what should remain stable.

```python
job = api.image_to_video(
    prompt=(
        "Preserve the flowers, vase shape, and window framing. Add a gentle breeze "
        "that moves the petals while the camera makes a slow push toward the vase."
    ),
    image_url="https://example.com/garden.jpg",
    tier="pro",
    aspect_ratio="16:9",
    duration=5,
)

result = api.wait_for_completion(job["request_id"])
print(result)
```

The image URL must be publicly accessible to the generation service. Private localhost URLs and files behind a login will not be fetchable by the provider.

## Prompt recipes

A useful prompt is a compact directing note. Include the subject, setting, one primary action, a camera move, and the details that must stay consistent. For image-to-video, assign the input image a clear role and avoid requesting changes to details it should preserve.

### Product reveal

```text
Create a 7-second product shot of one amber glass bottle on a stone counter.
Keep its label, cap, and proportions unchanged. Morning light falls from the left.
The camera makes a slow quarter-circle move as condensation runs down the glass.
Finish with the bottle facing camera and the label in focus. No extra products or text.
```

### Vertical social clip

```text
Create an 8-second vertical home-gardening clip. A person in a plain green apron
turns one basil pot toward the window and points to a new leaf. Use a steady,
handheld phone-camera feel and natural daylight. Keep the same hands, apron, pot,
and plant. End with a clear close view of the leaf; no captions or brand marks.
```

### Cinematic beat

```text
At a quiet station at night, one traveler in a rust-colored coat waits beside an
empty track. Begin wide, with wet platform tiles reflecting cool blue light. A
distant train light appears; the traveler turns toward it. Track slowly from
behind and settle over the traveler's shoulder. Keep the same person and coat;
avoid other people and abrupt cuts.
```

These examples are original to this repository. The prompt categories and production-planning approach were informed by [flaqai/awesome-kling-4-0](https://github.com/flaqai/awesome-kling-4-0); its prompt text and media are not reproduced here.

Explore more examples in the [Kling video prompt recipe guide](docs/prompt-recipes.md), including image-to-video usage and an iteration checklist.

## cURL workflow

The repository includes a ready-to-run request example:

```bash
export MUAPI_API_KEY="your_muapi_api_key"
bash examples/curl.sh
```

The submission response includes a `request_id`. Poll it with:

```bash
curl "https://api.muapi.ai/api/v1/predictions/REQUEST_ID/result" \
  --header "x-api-key: ${MUAPI_API_KEY}"
```

## Supported routes

| Workflow | MuAPI endpoint |
| --- | --- |
| Kling 3.0 Pro text-to-video | `POST /kling-v3.0-pro-text-to-video` |
| Kling 3.0 Pro image-to-video | `POST /kling-v3.0-pro-image-to-video` |
| Kling 3.0 Standard text-to-video | `POST /kling-v3.0-standard-text-to-video` |
| Kling 3.0 Standard image-to-video | `POST /kling-v3.0-standard-image-to-video` |
| Check a generation result | `GET /predictions/{request_id}/result` |

Base URL: `https://api.muapi.ai/api/v1`. The client route names and forwarded options are visible in [`kling_api.py`](kling_api.py). Provider routes and accepted fields may change; consult the [MuAPI API reference](https://muapi.ai/docs/api-reference) before production use.

## Troubleshooting

| Symptom | Check |
| --- | --- |
| `Set MUAPI_API_KEY` error | Add `MUAPI_API_KEY` to `.env`, or pass `api_key` to `KlingAPI(...)`. |
| HTTP 401 or 403 | Confirm the key is active and has access to the selected route. |
| HTTP 400 | Review required fields, parameter names, duration, and aspect-ratio values for the selected route. |
| Image request fails | Confirm the image URL is public, loads without cookies, and points directly to an image. |
| Polling times out | Check the provider task status and request ID; increase `timeout` if the job is still processing. |
| Route not found | Compare the endpoint in `kling_api.py` with the current MuAPI API reference. |

## FAQ

### Does this client call a Kling 4.0 model?

No. The current client uses MuAPI Kling 3.0 Standard and Pro routes. The repository name is a project label; always check the provider's current catalog for model availability.

### What does `tier` accept?

The Python wrapper accepts `standard` or `pro` and maps those values to the corresponding text-to-video or image-to-video route.

### Which optional parameters can I pass?

The client forwards additional keyword arguments to MuAPI. Accepted fields depend on the chosen route, so use the live API reference rather than assuming every parameter works for every model.

### Where can I find more prompt ideas?

Start with the [prompt recipe guide](docs/prompt-recipes.md). For a larger community collection, see [flaqai/awesome-kling-4-0](https://github.com/flaqai/awesome-kling-4-0); this SDK repository contains independently written examples rather than copied recipes.

### Can I use generated videos commercially?

The SDK license covers this repository's code. Rights and usage terms for generated outputs, input images, people, brands, and the generation service are separate; review the relevant provider terms before publishing or commercial use.

## Related projects

- [MuAPI](https://muapi.ai) — unified API for image, video, and audio generation.
- [MuAPI Kling page](https://muapi.ai/kling-4) — current product and model information.
- [MuAPI API reference](https://muapi.ai/docs/api-reference) — endpoint and parameter documentation.
- [Create a MuAPI access key](https://muapi.ai/access-keys).
- [Seedance 2 API](https://github.com/Anil-matcha/Seedance-2-API) — companion SDK for ByteDance video generation.
- [Awesome AI Video Models](https://github.com/Anil-matcha/awesome-ai-video-models) — browse video models and API options.
- [Awesome Kling 4.0 prompts](https://github.com/flaqai/awesome-kling-4-0) — community prompt collection used as inspiration for this repo's original recipe guide.

## License

This project is released under the [MIT License](LICENSE).
