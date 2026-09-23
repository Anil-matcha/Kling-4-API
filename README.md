# Kling 4 API — Python SDK & Video Generation Examples

[![Powered by MuAPI](https://img.shields.io/badge/Powered%20by-MuAPI-6366f1?style=flat-square)](https://muapi.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/)

A focused Python client and copy-paste examples for generating Kling videos through MuAPI. Submit text-to-video and image-to-video jobs, then poll the asynchronous result endpoint from Python or cURL.

The client currently calls MuAPI's Kling 3.0 Standard and Pro routes. The repository name follows the requested Kling 4 API project; use the documented route names below for working calls.

## Related Projects

- [Kling 4 API on MuAPI](https://muapi.ai/kling-4)
- [MuAPI](https://muapi.ai) — unified API for image, video, and audio generation.
- [MuAPI API reference](https://muapi.ai/docs/api-reference)
- [Create a MuAPI access key](https://muapi.ai/access-keys)
- [Seedance 2 API](https://github.com/Anil-matcha/Seedance-2-API) — companion SDK for ByteDance video generation.
- [Awesome AI Video Models](https://github.com/Anil-matcha/awesome-ai-video-models) — compare video models and API options.

## Install

```bash
git clone https://github.com/Anil-matcha/Kling-4-API.git
cd Kling-4-API
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env
```

Set `MUAPI_API_KEY` in `.env`. The client sends the key in the `x-api-key` header.

## Text-to-video

```python
from kling_api import KlingAPI

api = KlingAPI()
job = api.text_to_video(
    "A cinematic tracking shot of a red fox crossing a snowy forest at dawn",
    tier="pro",
    aspect_ratio="16:9",
    duration=5,
)
result = api.wait_for_completion(job["request_id"])
print(result)
```

`tier` accepts `standard` or `pro`. Other supported request parameters can be passed through as keyword arguments; check the [Kling 4 page](https://muapi.ai/kling-4) for current availability and model details.

## Image-to-video

```python
job = api.image_to_video(
    prompt="The camera slowly pushes in as the flowers move in a light breeze",
    image_url="https://example.com/garden.jpg",
    tier="pro",
    aspect_ratio="16:9",
    duration=5,
)
result = api.wait_for_completion(job["request_id"])
print(result)
```

The image URL must be publicly accessible to the generation service.

## Prompt recipes

For more controlled generations, write prompts as short shot briefs: describe the subject and setting, specify one main action, give the camera a clear path, and state what should stay consistent. See the [prompt recipe guide](docs/prompt-recipes.md) for original product, social-video, and cinematic examples.

The guide was informed by the prompt categories and production-planning ideas in [flaqai/awesome-kling-4-0](https://github.com/flaqai/awesome-kling-4-0). Its prompt text and scenarios are newly written for this repository. The SDK currently sends requests to Kling 3.0 routes; check the live MuAPI documentation for supported controls before relying on model-specific features.

## cURL

```bash
export MUAPI_API_KEY="your_muapi_api_key"
bash examples/curl.sh
```

The initial response includes a `request_id`. Poll the job with:

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
| Result polling | `GET /predictions/{request_id}/result` |

Base URL: `https://api.muapi.ai/api/v1`. API credentials are required; create a key at [muapi.ai/access-keys](https://muapi.ai/access-keys).

## License

[MIT](LICENSE)
