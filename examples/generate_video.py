import os

from kling_api import KlingAPI

api = KlingAPI()
job = api.text_to_video(
    "A cinematic tracking shot of a red fox crossing a snowy forest at dawn",
    tier="pro",
    aspect_ratio="16:9",
    duration=5,
)
print("Submitted:", job)
result = api.wait_for_completion(job["request_id"])
print("Video:", result.get("outputs") or result.get("url"))
