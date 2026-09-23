<p align="center">
  <picture>
    <img src="https://raw.githubusercontent.com/NousResearch/hermes-agent/main/assets/banner.png" alt="Awesome Hermes Agent" width="600">
  </picture>
</p>

# Awesome Hermes Agent

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A hand-picked collection of skills, plugins, tools, integrations, and community resources for [Hermes Agent](https://github.com/NousResearch/hermes-agent) — the self-evolving AI agent from [Nous Research](https://nousresearch.com).

Hermes Agent is built around a closed learning loop — it generates skills from real experience, improves them while working, and starting from v0.12.0 runs an autonomous Curator that scores, merges, and prunes the skill library on a weekly cron cycle. It builds a growing model of who you are across sessions and retains that context persistently. You can host it on a $5 VPS, a GPU cluster, or one of seven serverless backends (Vercel Sandbox, Daytona, Modal, and more). Access it through any of 18 built-in messaging platforms — Telegram, Discord, Slack, WhatsApp, Signal, Feishu/Lark, WeCom, QQBot, Yuanbao, and others — plus Microsoft Teams through a plugin.

This list tracks the ecosystem building around it.

**See also:** [awesome-openclaw](https://github.com/Anil-matcha/awesome-openclaw) — curated resources for OpenClaw (formerly Moltbot / Clawdbot), the predecessor agent with a native Hermes migration path. [awesome-deepseek-harness](https://github.com/Anil-matcha/awesome-deepseek-harness) — curated resources for DeepSeek Harness (`dsh`), another everything-is-a-plugin agent with a large community plugin ecosystem.

> Ecosystem snapshot (last reviewed: 2026-05-06)
> - Hermes Agent: [v0.12.0 (v2026.4.30) — "The Curator release"](https://github.com/NousResearch/hermes-agent/releases/tag/v2026.4.30)
> - Core repo: [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent) (134k+ stars)
> - Latest release notes: [Hermes releases](https://github.com/NousResearch/hermes-agent/releases)

---

## Where Do I Start?

If you're new to Hermes, start small instead of installing everything at once:

1. **Get it running** — Work through the [Official Docs quickstart](https://hermes-agent.nousresearch.com/docs/). It walks you through installation, CLI usage, configuration, and your first conversation.
2. **Install your first skills** — [wondelai/skills](https://github.com/wondelai/skills) (380+ stars, actively maintained) is a cross-platform skills library that works with Hermes and other agents. Or pick up [litprog-skill](https://github.com/tlehman/litprog-skill) (75+ stars) if you want literate programming support across Hermes, Claude Code, and OpenCode.
3. **Get a GUI** — [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) (500+ stars) is a Hermes-native workspace with chat, terminal, and a skills manager. If you need multi-agent fleet management, [mission-control](https://github.com/builderz-labs/mission-control) (3.7k+ stars) handles task dispatch and cost tracking at scale.

Once you're comfortable with the basics, explore the full list below. Every resource carries a maturity label:

| Tag | Meaning |
|-----|---------|
| **production** | Stable, documented, actively maintained — safe to build on |
| **beta** | Works but still changing — expect some rough edges |
| **experimental** | Proof of concept or early-stage — informative, not dependable |

---

## Contents

- [Where Do I Start?](#where-do-i-start)
- [Official Resources](#official-resources)
- [Skills & Plugins](#skills--plugins)
  - [Community Skills](#community-skills)
  - [Plugins](#plugins)
  - [agentskills.io Ecosystem](#agentskillsio-ecosystem)
  - [Skill Registries & Discovery](#skill-registries--discovery)
- [Tools & Utilities](#tools--utilities)
  - [Deployment](#deployment)
- [Integrations & Bridges](#integrations--bridges)
- [Detection & Media Forensics](#detection--media-forensics)
- [Multi-Agent & Swarms](#multi-agent--swarms)
- [Domain Applications](#domain-applications)
- [Forks & Derivatives](#forks--derivatives)
- [Guides & Documentation](#guides--documentation)
- [Operational Playbooks](#operational-playbooks)
- [Level-Up Blueprints](#level-up-blueprints)
- [Contributing](#contributing)
- [License](#license)

---

## Official Resources

> Repositories and resources maintained by Nous Research.

- [Hermes Agent](https://github.com/NousResearch/hermes-agent) by [Nous Research](https://nousresearch.com) — The core project. A self-improving and self-maintaining AI agent with a closed learning loop, an autonomous `hermes curator` that grades and consolidates the skill library on a cron schedule (v0.12+), messaging support across 18 platforms (Telegram, Discord, Slack, WhatsApp, Signal, Feishu/Lark, WeCom, QQBot, Yuanbao, and more) plus Microsoft Teams via plugin, seven execution backends (local, Docker, SSH, Singularity, Modal, Daytona, Vercel Sandbox), cron scheduling, MCP integration, profiles for multi-instance setups, pluggable model providers (Anthropic, ChatCompletions, Responses API, Bedrock), and fallback providers. 134k+ stars. Includes automatic migration from OpenClaw.
- [autonovel](https://github.com/NousResearch/autonovel) by [Nous Research](https://nousresearch.com) — Autonomous long-form writing pipeline built on Hermes. Generates full manuscripts (100k+ words) end-to-end using the agent loop.
- [hermes-paperclip-adapter](https://github.com/NousResearch/hermes-paperclip-adapter) by [Nous Research](https://nousresearch.com) — Run Hermes as a managed worker inside Paperclip companies. Connects the agent to Paperclip's task management and governance system.
- [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) by [Nous Research](https://nousresearch.com) — Evolutionary self-improvement using DSPy and GEPA (Genetic Evolution of Prompt Architectures). The research pipeline for optimizing Hermes's own prompts and behaviors.
- [Official Documentation](https://hermes-agent.nousresearch.com/docs/) — Complete docs covering quickstart, CLI, configuration, messaging gateway, security, tools, skills, memory, MCP, cron, ACP, API server, and architecture.
- [Release Notes](https://github.com/NousResearch/hermes-agent/releases) — Official changelog with feature highlights, migration notes, and fixes for each version.
- [tinker-atropos](https://github.com/NousResearch/tinker-atropos) by [Nous Research](https://nousresearch.com) — Standalone Atropos integration with the Thinking Machines Tinker API. RL training infrastructure for fine-tuning tool-calling models on real agent trajectories.
- [Skills Hub](https://agentskills.io) — The open standard for agent skills. Compatible across Hermes, Claude Code, Cursor, Codex, and other agents.
- [Discord](https://discord.gg/NousResearch) — The Nous Research community for bug reports, feature requests, and general discussion.

<br>

## Skills & Plugins

> Skills are procedural memory — reusable capabilities Hermes builds from experience and sharpens during use. Plugins extend core functionality.

### Community Skills

- **[beta]** [hermes-plugins](https://github.com/42-evey/hermes-plugins) by [42-evey](https://github.com/42-evey) — Plugin suite (195+ ⭐): Discord voice bridge with the Gemini Live API, a WhatsApp (Baileys) bridge, plus goal management, inter-agent bridging (Claude Code ↔ Hermes), model selection, and cost control.
- **[beta]** [hermes-skill-factory](https://github.com/Romanescu11/hermes-skill-factory) by [Romanescu11](https://github.com/Romanescu11) — Meta-skill that auto-generates reusable skills from your workflows. Aim it at a repetitive task and it creates a skill for it.
- **[beta]** [litprog-skill](https://github.com/tlehman/litprog-skill) by [tlehman](https://github.com/tlehman) — Literate programming skill that works across Claude Code, OpenCode, and Hermes. Combines code and prose into documented, executable notebooks.
- **[experimental]** [Wizards-of-the-Ghosts](https://github.com/Hmbown/Wizards-of-the-Ghosts) by [Hmbown](https://github.com/Hmbown) — Fantasy spell-themed skill pack. Wraps real development operations (refactoring, linting, testing) in a tabletop RPG interface.
- **[experimental]** [super-hermes](https://github.com/Cranot/super-hermes) by [Cranot](https://github.com/Cranot) — Trains Hermes to write better analytical prompts for itself before executing tasks. Adds a meta-reasoning layer where the agent generates stronger prompts before acting.
- **[experimental]** [hermes-life-os](https://github.com/Lethe044/hermes-life-os) by [Lethe044](https://github.com/Lethe044) — Personal OS agent that detects daily patterns and learns your routines over time. Uses Hermes's memory system for lifestyle tracking, not just code.
- **[beta]** [acca-tracker](https://github.com/svenmedina07-ship-it/skills/tree/main/acca-tracker) by [Banozz](https://github.com/svenmedina07-ship-it) — Multi-sport accumulator bet tracker for football, basketball, and tennis with live score monitoring. Detects sport per leg automatically, covers 30+ bet types, includes a scripts/scores.sh helper with TheSportsDB + ESPN fallback (NBA, WNBA, NCAA). 15-minute cron reports with per-leg status and overall acca health.
- **[beta]** [hermes-incident-commander](https://github.com/Lethe044/hermes-incident-commander) by [Lethe044](https://github.com/Lethe044) — Autonomous SRE agent for production incident detection and self-healing. Monitors services, diagnoses failures, and applies fixes. Works naturally with Hermes's cron scheduling.
- **[beta]** [hermes-dojo](https://github.com/Yonkoo11/hermes-dojo) by [Yonkoo11](https://github.com/Yonkoo11) — Self-improvement system that tracks agent performance, identifies weak skills, and iterates on them automatically.
- **[beta]** [hermes-spotify-skill](https://github.com/Alexeyisme/hermes-spotify-skill) by [Alexeyisme](https://github.com/Alexeyisme) — Spotify playback control for headless Linux and Raspberry Pi 4/5. Search, play, pause, skip, set volume, and transfer between Spotify Connect devices. No daemon required — Hermes writes spotipy snippets and runs them through `execute_code`. Compatible with raspotify for Pi-as-speaker. The only Linux-native Spotify skill in the ecosystem.
- **[experimental]** [hermes-skill-marketplace](https://github.com/Lethe044/hermes-skill-marketplace) by [Lethe044](https://github.com/Lethe044) — Agent that writes, tests, and publishes new skills autonomously. Automates the full skill creation and distribution lifecycle.
- **[experimental]** [personal-api](https://github.com/beiyuii/personal-api-skill) by [beiyuii](https://github.com/beiyuii) — Turns your Obsidian vault into an identity layer any AI agent can read in under 30 seconds.
- **[production]** [markoblogo/abvx-agent-skills](https://github.com/markoblogo/abvx-agent-skills) by [markoblogo](https://github.com/markoblogo) — Small, auditable cross-platform coding-agent skillpack for smaller diffs, evidence-led debugging, token control, browser verification, and reviewable `SKILL.md` workflows with validation and static security audit.
- **[beta]** [hermes-nextcloud](https://github.com/adnw-vinc/hermes-nextcloud) by [adnw-vinc](https://github.com/adnw-vinc) — Self-hosted Nextcloud bridge covering files (WebDAV), notes (Nextcloud Notes API), calendar and tasks (CalDAV), and contacts (CardDAV). App Password auth, configurable timezone, guided setup. Fills the self-hosted-cloud gap for Hermes users running their own infrastructure.
- **[beta]** [oh-my-hermes](https://github.com/witt3rd/oh-my-hermes) by [witt3rd](https://github.com/witt3rd) — Multi-agent orchestration skills for Hermes, inspired by `oh-my-claudecode` and rebuilt on Hermes primitives. Covers deep-research, deep-interview, `ralplan` (Planner → Architect → Critic consensus), `ralph` (execute → verify → iterate), `triage`, and `autopilot`. Composes end-to-end: research → interview → plan → verified execution.
- **[production]** [Infrasity-Labs/dev-gtm-claude-skills](https://github.com/Infrasity-Labs/dev-gtm-claude-skills) by [Infrasity-Labs](https://github.com/Infrasity-Labs) - Open-source, cross-platform agent skills for Claude Code and agentskills.io-compatible platforms. These skills are for SEO, GEO (Generative Engine Optimization), AI discoverability, and developer marketing. 
- **[production]** [CorpusIQ/corpusiq-docs](https://github.com/CorpusIQ/corpusiq-docs) by [CorpusIQ](https://github.com/CorpusIQ) — Hermes skill library for business operations: 36+ business API connectors (Stripe, HubSpot, QuickBooks, GA4, Meta Ads, Klaviyo) via MCP, plus growth operations, social media, email, and cross-source analytics skills. Turnkey operator agent for running a business from Hermes.
- **[beta]** [loremaster](https://github.com/loremaster-ai/loremaster) by [loremaster-ai](https://github.com/loremaster-ai) — AI scrum-master / PM skill pack extracted from a production multi-project deployment: sprint ceremonies with planning poker, backlog proposals, plan-conflict detection, and a per-project wiki vault with a knowledge graph. Every external write goes through per-item human approval buttons.
- **[beta]** [ditto](https://github.com/ohad6k/ditto) by [ohad6k](https://github.com/ohad6k) — Mines your local AI coding session logs (Claude Code, Codex, OpenCode) into a personal working profile the agent loads before every task. Single stdlib-only Python file, runs locally. Installs via `npx skills add ohad6k/ditto`; skill load verified on Hermes.
- **[beta]** [news-api-skills](https://github.com/currentslab/news-api-skills) by [currentslab](https://github.com/currentslab) — Cross-platform AgentSkills-compatible skills for the Currents News API, with installable packages for Hermes and other agent runtimes.
- **[beta]** [NotFair](https://github.com/nowork-studio/NotFair) by [NoWork Studio](https://github.com/nowork-studio) — Host-agnostic `SKILL.md` workflows for SEO, GEO, Google Ads, and Meta Ads, with MCP connectors for live account analysis and approval-gated changes.
- **[beta]** [internet-court-skill](https://github.com/internet-court/internet-court-skill) by [Internet Court Consortium](https://github.com/internet-court) — Agent-to-agent commerce skill: natural-language mandates, ERC-7710 delegated permissions, x402 payments, escrow, and dispute resolution. Install: `hermes skills tap add internet-court/internet-court-skill`.
- **[experimental]** [Hyperconsciousness](https://github.com/louis030195/hyperconsciousness/tree/main/skills/hyperconsciousness) by [louis030195](https://github.com/louis030195) — CLI skill for discovering local skills, PKM notes, encrypted knowledge and opaque credential capabilities.

### agentskills.io Ecosystem

> Skills built on the [agentskills.io](https://agentskills.io) open standard — compatible with Hermes and other agent platforms.

- **[production]** [wondelai/skills](https://github.com/wondelai/skills) by [wondelai](https://github.com/wondelai) — Cross-platform agent skills for Claude Code and agentskills.io-compatible platforms.
- **[production]** [agent-qa](https://github.com/vostride/agent-qa) by [Vostride](https://github.com/vostride) — Self-improving QA agent with SKILL.md modules for authoring natural-language web/mobile tests, debugging failed runs, and triaging results. Works with Claude Code and Codex-style skill loaders.
- **[production]** [youtube-skills](https://github.com/ZeroPointRepo/youtube-skills) by [therohitdas](https://github.com/therohitdas) — YouTube search, channel browsing, playlist extraction, and reliable transcripts on top of Hermes's built-in `youtube-content`. Routes through TranscriptAPI's backend (15M+ transcripts/month) to stay unblocked on cloud IP ranges. 12 sub-skills covering the full search → fetch → bulk extraction flow.
- **[production]** [Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills) by [mukul975](https://github.com/mukul975) — 753+ structured cybersecurity skills mapped to the MITRE ATT&CK framework. The most comprehensive security skills collection available for the ecosystem. 4k+ stars.
- **[production]** [chainlink-agent-skills](https://github.com/smartcontractkit/chainlink-agent-skills) by [Chainlink](https://github.com/smartcontractkit) — Official Chainlink agent skills on the agentskills.io spec. Oracle network data, CCIP, and smart contract interaction.
- **[production]** [black-forest-labs/skills](https://github.com/black-forest-labs/skills) by [Black Forest Labs](https://github.com/black-forest-labs) — Official FLUX model skills for image generation. First-party skills from the team behind FLUX.
- **[production]** [pydantic-ai-skills](https://github.com/DougTrajano/pydantic-ai-skills) by [DougTrajano](https://github.com/DougTrajano) — Pydantic AI with agentskills.io support. Adds type-safe schema validation to agent skill inputs and outputs.
- **[beta]** [cognify-skills](https://github.com/Yarmoluk/cognify-skills) by [Yarmoluk](https://github.com/Yarmoluk) — 19 business operations skills covering CRM, invoicing, and project management workflows.
- **[beta]** [execplan-skill](https://github.com/tiann/execplan-skill) by [tiann](https://github.com/tiann) — Handles long-running task execution with proper lifecycle management — progress tracking, checkpoints, and failure recovery.
- **[beta]** [maestro](https://github.com/ReinaMacCredy/maestro) by [ReinaMacCredy](https://github.com/ReinaMacCredy) — Skill orchestration with Conductor planning and Beads tracking. Structures multi-step skill execution into observable pipelines.
- **[beta]** [bmad-module-skill-forge](https://github.com/armelhbobdad/bmad-module-skill-forge) by [armelhbobdad](https://github.com/armelhbobdad) — Converts repos and documentation into agentskills.io-compliant skills. Input a codebase, get installable skills.
- **[beta]** [Agentic-MCP-Skill](https://github.com/cablate/Agentic-MCP-Skill) by [cablate](https://github.com/cablate) — MCP client with agentskills.io validation. Bridges MCP tool servers with the skills standard.
- **[experimental]** [ripley-xmr-gateway](https://github.com/KYC-rip/ripley-xmr-gateway) by [KYC-rip](https://github.com/KYC-rip) — Monero (XMR) blockchain gateway for agents. Enables private cryptocurrency transactions from agent workflows.
- **[beta]** [skillsdotnet](https://github.com/PederHP/skillsdotnet) by [PederHP](https://github.com/PederHP) — C# implementation of agentskills.io with MCP integration. A .NET path into the skills ecosystem.
- **[beta]** [colony-skill](https://github.com/TheColonyCC/colony-skill) by [TheColonyCC](https://github.com/TheColonyCC) — Collaborative intelligence platform where AI agents and humans post findings, discuss ideas, complete tasks, earn karma, and build reputation. Community hub at [thecolony.cc](https://thecolony.cc).
- **[beta]** [AgentCash](https://github.com/Merit-Systems/agentcash-skills) by [Merit-Systems](https://github.com/Merit-Systems) — Gives agents access to 300+ premium APIs through a single skill backed by a wallet balance for x402 or MPP payments. Covers web scraping, image generation, email delivery, and more.
- **[beta]** [x-twitter-scraper](https://github.com/Xquik-dev/x-twitter-scraper) by [Xquik-dev](https://github.com/Xquik-dev) — Typed X (Twitter) access across 43 SKILL.md folders covering reads (search, timelines, mentions, trends, articles, bookmarks, for-you), writes (post, DM, follow, profile updates), bulk extraction (followers, communities, lists, spaces), and AI composition (write-tweets, threads, optimize, going-viral). Typed JSON in/out through the Xquik API — no browser automation.
- **[production]** [drawio-skill](https://github.com/Agents365-ai/drawio-skill) by [Agents365-ai](https://github.com/Agents365-ai) — Generates draw.io diagrams from natural language and exports to PNG/SVG/PDF. SKILL.md format, works across Claude Code, OpenClaw, Hermes, and Codex. 1.1k+ stars.
- **[production]** [open-design](https://github.com/nexu-io/open-design) by [nexu-io](https://github.com/nexu-io) — Local-first, open-source design alternative with 31 composable skills over 129 design systems, plus image, video, and audio generation. Integrates with Hermes via ACP/JSON-RPC. 28k+ stars.
- **[beta]** [runapi-ai/cli-skill](https://github.com/runapi-ai/cli-skill) by [RunAPI](https://github.com/runapi-ai) — Cross-agent skill for running AI image, video, music/audio, and model API jobs from CLI-capable agents.
- **[beta]** [master-skill](https://github.com/voidborne-d/master-skill) by [voidborne-d](https://github.com/voidborne-d) — Distills an entire industry domain into a portable skill folder through a 5-phase research and synthesis pipeline. Works across Hermes, Claude Code, OpenClaw, and Codex. Ships 9 industries at v1.4.
- **[beta]** [sequenzy-email-marketing](https://github.com/Sequenzy/skills/tree/main/skills/sequenzy-email-marketing) by [Sequenzy](https://github.com/Sequenzy) - Agent skill for operating Sequenzy lifecycle email marketing and transactional email workflows: subscribers, segments, campaigns, sequences, templates, and stats.
- **[production]** [longbridge/skills](https://github.com/longbridge/skills) by [Longbridge](https://github.com/longbridge) — 13 consolidated agent skills for Longbridge Securities covering real-time quotes, K-line charts, fundamentals, portfolio analysis, technical analysis, options/warrants, watchlist, and earnings reports for HK/US/A-share/SG markets. Trilingual (Simplified Chinese / Traditional Chinese / English). Install: `npx skills add longbridge/skills -g`.
- **[production]** [Infrasity-Labs/dev-gtm-claude-skills](https://github.com/Infrasity-Labs/dev-gtm-claude-skills) by [Infrasity-Labs](https://github.com/Infrasity-Labs) - Open-source, cross-platform agent skills for Claude Code and agentskills.io-compatible platforms. These skills are for SEO, GEO (Generative Engine Optimization), AI discoverability, and developer marketing. 
- **[production]** [remoet-labs/agent-skills](https://github.com/remoet-labs/agent-skills) by [Remoet](https://github.com/remoet-labs) — Job-search and career-discovery skill. Searches tech companies by their actual tech stack, stars the ones that match the user's stack, pulls jobs from that curated shortlist, and reads/writes the user's developer profile through conversation. Backed by a remote MCP server (`https://api.remoet.dev/mcp`, Bearer API key or OAuth). One SKILL.md that runs unchanged on Hermes, OpenClaw, and any MCP-capable harness. Free tier.
- **[beta]** [tiny.place](https://github.com/tinyhumansai/tiny.place) by [TinyHumans](https://github.com/tinyhumansai) — Agent-to-agent social network as an agentskills.io skill. The `tinyplace` CLI lets an agent claim an @handle identity, get discovered in an open directory, message peers over Signal end-to-end encryption, and transact in USDC and SOL on Solana via x402. One SKILL.md that runs on Hermes, OpenClaw, and any agentskills.io-compatible harness. [ClawHub](https://clawhub.ai/tinyhumansai/tinyplace)
- **[beta]** [agent-relay](https://github.com/mmmikael/arelay-skills) by [mmmikael](https://github.com/mmmikael) — Delivers files, reports, and Markdown/HTML/PDF artifacts to an [Agent Relay](https://arelay.app) end-to-end encrypted inbox, and submits outbound email drafts for human approval before send. Works on any agentskills.io-compatible host. MIT licensed.
- **[production]** [linkedin-skills](https://github.com/sergebulaev/linkedin-skills) by [Serge Bulaev](https://github.com/sergebulaev) — 10 LinkedIn-focused agent skills on the agentskills.io standard: draft posts and comments, extract hook formulas, audit drafts, reduce AI tells, optimize a profile, and plan a weekly cadence. Each is a `skills/*/SKILL.md` folder that Hermes loads natively; `hermes claw migrate` imports them from an OpenClaw setup. MIT licensed.
- **[beta]** [zooidfund-skill](https://github.com/Ales375/zooidfund-skill) by [Ales375](https://github.com/Ales375) — Discovers, evaluates, and donates USDC on Base to humanitarian crowdfunding campaigns at zooid.fund. Includes Hermes MCP setup guidance and evaluation support around evidence, verification artifacts, campaign updates, and optional credibility gating.

### Plugins

- **[beta]** [Artifact Relay](https://github.com/eloktev/hermes-artifact-relay) by [Egor Loktev](https://github.com/eloktev) — Publishes long Markdown and standalone HTML from Hermes to a companion [self-hosted service](https://github.com/eloktev/artifact-relay), with separate publishing and viewing credentials and sandboxed HTML rendering.
- **[production]** [Agora](https://github.com/yzy806806/agora) by [yzy806806](https://github.com/yzy806806) — Multi-agent team plugin. 8 role templates, event-driven discussions with voting, heartbeat-driven project management, kanban task dispatch, AGENTS.md shared context, dashboard UI. 17 tools, 3 hooks.
- **[beta]** [plur](https://github.com/plur-ai/plur) by [plur-ai](https://github.com/plur-ai) — Shared memory layer for AI agents using an open engram format (YAML). Useful for persistent learning patterns across Hermes sessions.
- **[experimental]** [hermes-payguard](https://github.com/nativ3ai/hermes-payguard) by [nativ3ai](https://github.com/nativ3ai) — USDC and x402 payment plugin. Lets Hermes send and receive payments with configurable spending limits and approval flows.
- **[beta]** [hermes-web-search-plus](https://github.com/robbyczgw-cla/hermes-web-search-plus) by [robbyczgw-cla](https://github.com/robbyczgw-cla) — Multi-provider web search that intelligently routes across Serper, Tavily, Exa, and more. Better result quality and source diversity than the built-in search.
- **[beta]** [hermes-weather-plugin](https://github.com/FahrenheitResearch/hermes-weather-plugin) by [FahrenheitResearch](https://github.com/FahrenheitResearch) — Professional-grade weather plugin with NWS model imagery, NEXRAD radar, and meteorological calculations.
- **[experimental]** [hermes-wxtrain-plugin](https://github.com/FahrenheitResearch/hermes-wxtrain-plugin) by [FahrenheitResearch](https://github.com/FahrenheitResearch) — ML pipeline plugin for building training datasets from HRRR/GFS/ERA5 weather models. Companion to the weather plugin for weather ML workflows.
- **[production]** [Hermes Connector](https://github.com/CorsenAI/hermes-connector) by [Corsen AI](https://github.com/CorsenAI) — Chrome browser extension and local Hermes plugin that binds an exact profile and session to user-selected tabs through an authenticated loopback broker.
- **[experimental]** [hermes-plugin-chrome-profiles](https://github.com/anpicasso/hermes-plugin-chrome-profiles) by [anpicasso](https://github.com/anpicasso) — Switch browser tools between Chrome profiles via CDP. Useful for multi-account testing or browsing with different saved sessions.
- **[experimental]** [hermes-cloudflare](https://github.com/raulvidis/hermes-cloudflare) by [raulvidis](https://github.com/raulvidis) — Cloudflare browser rendering plugin. Headless browsing routed through Cloudflare's infrastructure instead of local automation.
- **[beta]** [evey-bridge-plugin](https://github.com/42-evey/evey-bridge-plugin) by [42-evey](https://github.com/42-evey) — Claude Code plugin for bridging with Hermes. Lets Claude Code and Hermes share context and hand off tasks to each other.
- **[beta]** [agent-analytics-hermes-plugin](https://github.com/Agent-Analytics/agent-analytics-hermes-plugin) by [Agent-Analytics](https://github.com/Agent-Analytics) — Native Signals dashboard tab for Hermes with read-only multi-project analytics, explicit timeframe controls, and theme-aware UI.
- **[beta]** [Hermes Tweet](https://github.com/Xquik-dev/hermes-tweet) by [Xquik-dev](https://github.com/Xquik-dev) — Native Hermes Agent plugin for X/Twitter search, read, and guarded action workflows through Xquik. Ships plugin manifests, SKILL.md bundles, installer prompts for API keys, and compatibility tests against current Hermes plugin behavior.
- **[beta]** [hermes-curator-evolver](https://github.com/pingchesu/hermes-curator-evolver) by [pingchesu](https://github.com/pingchesu) — Evidence-driven companion to v0.12's built-in Curator. Observes tool and skill events into a local SQLite store, backfills existing session history, generates reports and dry-run proposals, and runs a guarded daily loop that only appends low-risk evidence-backed notes with backups and rollback manifests.
- **[beta]** [hermes-dynamic-workflows](https://github.com/lingjiuu/hermes-dynamic-workflows) by [lingjiuu](https://github.com/lingjiuu) — Adds Claude Code-style Dynamic Workflows to Hermes: model-written sandboxed scripts coordinate subagents with `agent`, `parallel`, and `pipeline`, supporting up to 1000 subagents, persisted/resumable runs, a live `hermes-workflows` dashboard, and `/workflows` history.
- **[beta]** [rtk-hermes](https://github.com/ogallotti/rtk-hermes) by [ogallotti](https://github.com/ogallotti) — Plugin that intercepts shell commands via `pre_tool_call` and compresses terminal output through [RTK](https://github.com/rtk-ai/rtk) before it reaches the LLM context. 60–90% token reduction on shell commands. Zero config — auto-loads on gateway boot.
- **[beta]** [hermes-ops-kit](https://github.com/redoracle/hermes-ops-kit) by [redoracle](https://github.com/redoracle) — Operational and security plugin for Hermes Agent: provider routing and health, Bitwarden/Vaultwarden-backed secret and key lifecycle, preflight plugin scanning and enforcement, MCP tool auditing, cost governance, diagnostics, image routing, and remote assistant delegation. 7 tools + 2 hooks via native Hermes plugin manifest. 201 tests, MIT.
- **[experimental]** [cold-memory-kernel](https://github.com/jim-688/cold-memory-kernel) by [jim-688](https://github.com/jim-688) — Architecture governance framework for Hermes: layered memory (Hot/Cold/Config/Runtime), evidence-driven iteration (Hypothesis/Proposal/Observation), and capability-driven design. Documentation repo with runnable demo.
- **[beta]** [custom-dangerous-patterns](https://github.com/scross01/hermes-custom-dangerous-patterns-plugin) by [scross01](https://github.com/scross01) — Adds additional terminal command patterns that require approval before execution. Extends the built-in dangerous-command guard with user-defined patterns, works with the standard approve-once/session/always/deny flow, and ships `hermes custom-dangerous-patterns` CLI commands to manage them.
- **[beta]** [cron-status-alert](https://github.com/pnascimento9596/cron-status-alert) by [pnascimento9596](https://github.com/pnascimento9596) — DMs you when a scheduled Hermes job fails to deliver to Discord or runs overdue, and confirms recovery. Distinct from cronalytics (cost/usage/health); watches delivery-receipt status. Adds /cron-status.
- **[experimental]** [Bot HQ](https://github.com/the-spirit-realm/hermes-bot-hq) by [the-spirit-realm](https://github.com/the-spirit-realm) — Hermes desktop plugin: sidebar fleet page for local bots (profiles) plus per-bot Home dashboards. Install: `hermes plugins install the-spirit-realm/hermes-bot-hq`.

### Skill Registries & Discovery

- **[beta]** [hermeshub](https://github.com/amanning3390/hermeshub) by [amanning3390](https://github.com/amanning3390) — Browse, share, and install community skills for Hermes. A community hub for skill discovery, still early but growing.
- **[production]** [skilldock.io](https://github.com/chigwell/skilldock.io) by [chigwell](https://github.com/chigwell) — Registry of reusable AI skills compatible with OpenClaw, Claude Code, and Hermes. An established cross-platform skills marketplace.
- **[production]** [nika](https://github.com/supernovae-st/nika) by [supernovae-st](https://github.com/supernovae-st) — Deterministic workflow runner Hermes can delegate to: repeatable AI jobs as reviewable `.nika.yaml` files, checked before a token is spent and tamper-evident after. Ships a skill pack plus a read-only MCP oracle; the offline mock path needs zero keys.
- **[production]** [Global Chat](https://global-chat.io) by [pumanitro](https://github.com/pumanitro) — Cross-protocol agent discovery across MCP, A2A, and agents.txt. Searchable directory of 18K+ MCP servers and agents.
- **[production]** [CreatorSkills](https://creatorskills.co) — Marketplace of 30+ downloadable AI skills for content creators. Covers YouTube scripting, sponsorship analysis, content repurposing, and audience growth.

<br>

## Tools & Utilities

> Applications, CLIs, and utilities built on top of or alongside Hermes Agent.

- **[production]** [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) by [outsourc-e](https://github.com/outsourc-e) — Web-based workspace with chat, terminal, memory browser, skills manager, and inspector. The most complete GUI for Hermes. Built at the Nous Hackathon 2026.
- **[beta]** [hermes-desktop](https://github.com/dodo-reach/hermes-desktop) by [dodo-reach](https://github.com/dodo-reach) — Native macOS workspace for Hermes built around a direct, host-first SSH connection model. Includes a real embedded terminal, session browsing, file editing, skills browsing, and usage metrics — no extra gateway or daemon.
- **[production]** [mission-control](https://github.com/builderz-labs/mission-control) by [builderz-labs](https://github.com/builderz-labs) — Open-source dashboard for AI agent orchestration. Manage fleets, dispatch tasks, track costs, and coordinate multi-agent workflows. Self-hosted, SQLite-powered. 3.7k+ stars.
- **[experimental]** [hermes-neurovision](https://github.com/Tranquil-Flow/hermes-neurovision) by [Tranquil-Flow](https://github.com/Tranquil-Flow) — Terminal neurovisualizer with 42 animated themes. Decorative overlays for agent activity.
- **[beta]** [lintlang](https://github.com/roli-lpci/lintlang) by [roli-lpci](https://github.com/roli-lpci) — Static linter for AI agent configs and prompts with HERM v1.1 scoring. Catches config mistakes that silently degrade agent behavior.
- **[beta]** [nix-hermes-agent](https://github.com/0xrsydn/nix-hermes-agent) by [0xrsydn](https://github.com/0xrsydn) — Nix package and NixOS module for Hermes. Fully reproducible deployments via Nix flakes.
- **[beta]** [Nora](https://github.com/solomon2773/nora) by [solomon2773](https://github.com/solomon2773) — Self-hosted control plane for deploying and operating Hermes and OpenClaw fleets on Docker and Kubernetes, with lifecycle management, monitoring, terminal and log access, integrations, and CLI/MCP interfaces.
- **[beta]** [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) by [0xNyk](https://github.com/0xNyk) — Community migration tool from OpenClaw to Hermes. For Hermes v0.3.0+, the native `hermes claw migrate` command now covers the full path — use this as a fallback.
- **[experimental]** [vessel-browser](https://github.com/unmodeled-tyler/vessel-browser) by [unmodeled-tyler](https://github.com/unmodeled-tyler) — AI-native Linux browser with MCP control and autonomous browsing. A full browser built for agent use, not just a headless wrapper.
- **[production]** [camofox-browser](https://github.com/jo-inc/camofox-browser) by [jo-inc](https://github.com/jo-inc) — Stealth headless browser server with a REST API that bypasses Cloudflare, bot detection, and anti-scraping. Drop-in Puppeteer/Playwright replacement used in Hermes's own browser automation. 4k+ stars, MIT. The right backend when your VPS-hosted Hermes keeps getting blocked.
- **[beta]** [portable-hermes-agent](https://github.com/rookiemann/portable-hermes-agent) by [rookiemann](https://github.com/rookiemann) — Windows desktop app bundling 100 tools, GUI, local models, ComfyUI, and workflows in a single portable package.
- **[beta]** [hermes-ui](https://github.com/pyrate-llama/hermes-ui) by [pyrate-llama](https://github.com/pyrate-llama) — Single-file glassmorphic web UI with SSE streaming, tool call visualization, activity panel, image analysis (Gemini Vision), session management, PDF export, skill browser, memory viewer, and mobile support. Python proxy on port 3333, no build step required.
- **[beta]** [hermes-webui](https://github.com/sanchomuzax/hermes-webui) by [sanchomuzax](https://github.com/sanchomuzax) — Lightweight process monitoring and configuration dashboard. A simpler alternative to hermes-workspace, focused on ops.
- **[production]** [hermes-web-ui](https://github.com/EKKOLearnAI/hermes-web-ui) by [EKKOLearnAI](https://github.com/EKKOLearnAI) — Vue 3 + TypeScript dashboard with real-time streaming chat across multiple backends, unified config for 8 messaging channels, token/cost analytics with 30-day trends, cron scheduling, multi-profile gateway management, multi-agent group chat with @mention routing, and a WebSocket terminal. 3.6k+ stars.
- **[beta]** [evey-setup](https://github.com/42-evey/evey-setup) by [42-evey](https://github.com/42-evey) — One-command setup for the full Hermes stack with free models and 29 pre-configured plugins.
- **[beta]** [flowstate-qmd](https://github.com/amanning3390/flowstate-qmd) by [amanning3390](https://github.com/amanning3390) — Anticipatory memory for AI agents using RAG and vector search. Pre-loads relevant context before queries reach the agent.
- **[beta]** [mnemo-hermes](https://github.com/eleion-ai/mnemo-hermes) by [hernanqwz](https://github.com/hernanqwz) / [Eleion AI](https://github.com/eleion-ai) — Semantic memory plugin adding pgvector vector search to Hermes's built-in FTS5 memory. Five tools plus an `on_session_start` hook for automatic context loading. Runs entirely local via Ollama, no API keys needed. MIT licensed.
- **[beta]** [Mnemosyne](https://github.com/AxDSan/Mnemosyne) by [AxDSan](https://github.com/AxDSan) — Local-first sub-millisecond memory system built for Hermes. SQLite + sqlite-vec hybrid search (50% vector / 30% FTS5 / 20% importance), BEAM tiered architecture (working / episodic / scratchpad), and a temporal knowledge graph with time-aware fact invalidation. Zero external dependencies.
- **[beta]** [RoBrain](https://github.com/adelinamart/robrain) by [adelinamart](https://github.com/adelinamart) — Self-hosted decision memory that stores decisions **and their rejected alternatives** as a structured field, then surfaces the veto with its recorded reason when a task revisits a ruled-out approach. Passive capture through a Perception API on your own Postgres; always-on decision summary, per-turn retrieval, and a `robrain_search` tool, all fail-open. Optional fully-local LLM via Ollama/LM Studio, Apache-2.0. Installs with `npx robrain install --hermes`. Ships VetoBench, a reproducible benchmark of rejected-approach recall with committed run receipts.
- **[production]** [SkillClaw](https://github.com/AMAP-ML/SkillClaw) by [AMAP-ML](https://github.com/AMAP-ML) — Open-source companion that auto-evolves, deduplicates, and improves your skill library from real session data. Adds a post-task evolution loop on top of Hermes's built-in skill creation. Native integration via `~/.hermes/skills`. 705 stars, MIT licensed.
- **[production]** [Clarvia](https://github.com/clarvia-project/scanner) by [clarvia-project](https://github.com/clarvia-project) — AEO (Agent Experience Optimization) scoring for MCP tools. Analyzes 15,400+ indexed MCP servers for agent-friendliness. REST API + MCP server so agents can evaluate tools from inside their own loop.
- **[beta]** [agenttrace](https://github.com/luoyuctl/agenttrace) by [luoyuctl](https://github.com/luoyuctl) — Local-first TUI/CLI for post-run session audits covering cost and token spikes, tool failures, retry loops, latency gaps, health scores, anomaly detection, and session diffs. No upload, no cloud, MIT. Ships a companion SKILL.md for in-agent audit runs.
- **[beta]** [llmtrim](https://github.com/fkiene/llmtrim) by [fkiene](https://github.com/fkiene) — Local proxy in front of the model Hermes calls; compresses resent tool schemas, history, and MCP tool output before each request is sent. Quality-gated, so it never increases your bill. -31% input / -74% output tokens. Also an MCP server, CLI, and library (Rust, Python, Ruby, Swift, Kotlin, JS/WASM). MPL-2.0.
- **[beta]** [Agent37 Starter Kit](https://github.com/agent37-platform/starter-kit) by [Agent37](https://github.com/agent37-platform) — Fork-and-rebrand multi-tenant web app for running Hermes agents: auth, chat, files, fleet management (Supabase; needs an Agent37 Cloud key)

### Deployment

- **[beta]** [hermes-agent-docker](https://github.com/xmbshwll/hermes-agent-docker) by [xmbshwll](https://github.com/xmbshwll) — Minimal Docker sandbox image for Hermes. Pull, run, done.
- **[beta]** [hermes-agent-template](https://github.com/Crustocean/hermes-agent-template) by [Crustocean](https://github.com/Crustocean) — Production-ready Docker image for cloud Hermes deployments. Infrastructure wiring pre-configured.
- **[experimental]** [portainer-stack-hermes](https://github.com/ellickjohnson/portainer-stack-hermes) by [ellickjohnson](https://github.com/ellickjohnson) — Docker Compose + Portainer + ttyd web terminal. Deploy Hermes and reach it from any browser.
- **[experimental]** [hermes-autonomous-server](https://github.com/JackTheGit/hermes-autonomous-server) by [JackTheGit](https://github.com/JackTheGit) — Headless Hermes deployment with systemd and cron on Linux servers. Runs unattended.
- **[beta]** [RestlessAgents](https://restlessagents.com/) by [Tom Oehlrich](https://github.com/tomoehlrich) — Comparison directory for managed and self-hosted VPS hosting options across OpenClaw and Hermes Agent.
- **[beta]** [evey-setup](https://github.com/42-evey/evey-setup) by [42-evey](https://github.com/42-evey) — One-command bootstrap from a fresh clone to a working multi-platform Hermes deployment: free models, 29 plugins pre-wired, gateway configured. Not a fork — an opinionated setup script.

<br>

## Integrations & Bridges

> Connect Hermes to other platforms, devices, and services.

- **[beta]** [hermes-android](https://github.com/raulvidis/hermes-android) by [raulvidis](https://github.com/raulvidis) — Android device bridge with a full Python toolset. Lets Hermes interact with and control Android devices.
- **[beta]** [hermes-miniverse](https://github.com/teknium1/hermes-miniverse) by [teknium1](https://github.com/teknium1) — Bridge to Miniverse pixel worlds. By a Nous Research co-founder.
- **[production]** [hindsight](https://github.com/vectorize-io/hindsight) by [Vectorize](https://github.com/vectorize-io) — Long-term memory layer for agents with retain/recall/reflect workflows. Integrates with Hermes via plugin or MCP and supports semantic, graph, and temporal retrieval.
- **[beta]** [honcho-self-hosted](https://github.com/elkimek/honcho-self-hosted) by [elkimek](https://github.com/elkimek) — Self-hosted Honcho memory backend for Hermes. Useful when you need stronger cross-session memory behavior with full local control.
- **[beta]** [yantrikdb-hermes-plugin](https://github.com/yantrikos/yantrikdb-hermes-plugin) by [yantrikos](https://github.com/yantrikos) — Hermes-native memory provider for YantrikDB. Self-maintaining memory: `think()` canonicalizes duplicates, `conflicts()` surfaces contradictions instead of silently overwriting, and every `recall()` result carries a `why_retrieved` reason list for explainable ranking. Drop-in install, talks HTTP to a Rust backend.
- **[beta]** [Mnemoverse Memory](https://github.com/mnemoverse/mcp-memory-server) by [Mnemoverse](https://github.com/mnemoverse) - Persistent memory for AI agents over MCP. Runs as a remote HTTP server with OAuth at https://mcp.mnemoverse.com/mcp, or as a local stdio server via `npx -y @mnemoverse/mcp-memory-server` with an API key: the two kinds of MCP server Hermes `mcp_servers` takes. Recall is re-ranked by feedback on whether a recalled memory helped or misled. MIT server, hosted engine, free tier.
- **[experimental]** [zouroboros-swarm-executors](https://github.com/marlandoj/zouroboros-swarm-executors) by [marlandoj](https://github.com/marlandoj) — Local executor bridge for Claude Code + Hermes integration. Enables task handoff between both agents.
- **[beta]** [reina](https://github.com/Crustocean/reina) by [Crustocean](https://github.com/Crustocean) — Autonomous AI agent for the Crustocean platform. Deep Hermes integration into the Crustocean product.
- **[beta]** [hermes-agent-acp-skill](https://github.com/Rainhoole/hermes-agent-acp-skill) by [Rainhoole](https://github.com/Rainhoole) — Multi-agent delegation skill bridging Hermes, Codex, and Claude Code. Routes subtasks to the best-suited agent automatically.
- **[experimental]** [hermes-blockchain-oracle](https://github.com/gizdusum/hermes-blockchain-oracle) by [gizdusum](https://github.com/gizdusum) — Solana blockchain intelligence MCP server. Provides on-chain analytics and wallet data to Hermes via MCP.
- **[experimental]** [hermes-council](https://github.com/Ridwannurudeen/hermes-council) by [Ridwannurudeen](https://github.com/Ridwannurudeen) — Adversarial multi-perspective council MCP server. Multiple AI viewpoints debate before the agent commits to a decision.
- **[production]** [Not Human Search](https://github.com/unitedideas/nothumansearch-mcp) by [unitedideas](https://github.com/unitedideas) — MCP server for discovering other MCP servers. Indexes 8,600+ agent-friendly sites with agentic scoring, category filters, and live JSON-RPC verification. Wire it into Hermes to let the agent find and evaluate new tools on its own.
- **[experimental]** [NemoHermes](https://github.com/Hmbown/NemoHermes) by [Hmbown](https://github.com/Hmbown) — NVIDIA capability registry and Spark-aware routing layer. Routes compute-heavy tasks to available GPU infrastructure.
- **[beta]** [microsoft-workspace-skill](https://github.com/Andrew-Girgis/microsoft-workspace-skill) by [Andrew-Girgis](https://github.com/Andrew-Girgis) — Full Outlook/Hotmail/Microsoft 365 integration via Microsoft Graph API. Email, calendar, contacts, user profile, and free/busy scheduling. OAuth2 with auto-refresh. Includes a preview-before-send pattern that prevents shell `$` variable mangling when agents compose emails containing dollar amounts.
- **[beta]** [agent-android](https://github.com/aivanelabs/ai-rpa/tree/main/skills/agent-android) by [AIVane Labs](https://github.com/aivanelabs) — LAN-first Android control for Hermes over WiFi — no USB, ADB, or root required once the AIVane service is running. Supports health checks, app listing, UI tree inspection, taps, text input, swipes, navigation, screenshots, and inspect→act→smoke flows. Only connects to user-provided device URLs.
- **[beta]** [clawsocial-hermes-plugin](https://github.com/mrpeter2025/clawsocial-hermes-plugin) by [mrpeter2025](https://github.com/mrpeter2025) — Social discovery plugin with semantic interest matching, real-time WebSocket messaging, shareable profile cards, and local/web inbox. All actions require explicit user request. Bilingual (English + Chinese).
- **[beta]** [mistral-mcp](https://github.com/Swih/mistral-mcp) by [Swih](https://github.com/Swih) — MCP server (stdio + Streamable HTTP) wrapping the full Mistral AI surface — chat, embeddings, vision, OCR, Voxtral audio, Codestral FIM, agents, moderation, classification, files, and batch. 22 tools. Route OCR/audio/FIM/classification to Mistral's specialized endpoints while keeping your primary reasoning model.
- **[production]** [PipRail](https://github.com/piprail/piprail) by [PipRail](https://github.com/piprail) — Budget-bound, self-custodial x402 payment wallet via `npx -y @piprail/mcp`. Lets Hermes autonomously pay 402 "Payment Required" URLs across EVM, Solana, TON, Tron, NEAR, Sui, Aptos, Algorand, Stellar, and the XRP Ledger — funds settle straight to the merchant, no facilitator, no fee, capped by a spend policy the model cannot exceed. MIT.
- **[production]** [Spraay x402 Gateway](https://gateway.spraay.app) by [plagtech](https://github.com/plagtech) — Batch-pay any number of recipients in a single on-chain transaction across 13+ chains (Base, Ethereum, Solana, Polygon, Arbitrum, and more). 151 paid primitives covering escrow, token bridges, gas estimation, oracle data, and AI inference — all non-custodial, pay-per-call via the x402 micropayment protocol. Available as a [Hermes optional skill](https://github.com/NousResearch/hermes-agent/pull/49716) (`hermes skills install official/blockchain/spraay-x402`) or via [MCP server](https://smithery.ai/servers/Plagtech/Spraay-x402-mcp) with 161 tools. Batch contract verified on Base: `0x1646452F98E36A3c9Cfc3eDD8868221E207B5eEC`.
- **[production]** [MeiGen-AI-Design-MCP](https://github.com/jau123/MeiGen-AI-Design-MCP) by [jau123](https://github.com/jau123) — Stdio MCP server for AI image and video generation across 9 leading models plus local ComfyUI. Three backend modes: MeiGen cloud, any OpenAI-compatible API (BYOK), or fully offline ComfyUI. README ships a tested Hermes `mcp_servers` YAML with the timeout overrides needed for video generation workflows. 1k+ stars.
- **[production]** [The Stall](https://github.com/thebrierfox/the-stall) by [IntuiTek¹](https://intuitek.ai) — 209 pay-per-call data capabilities via x402 MCP: stocks, crypto, DeFi, on-chain analytics, geopolitical signals, and Polymarket intelligence. USDC micropayments on Base — no API keys or accounts required.
- **[production]** [screenpipe](https://github.com/screenpipe/screenpipe) by [screenpipe](https://github.com/screenpipe) — Searchable screen-text and audio history for Hermes recall, meeting context, and work summaries through [MCP](https://github.com/screenpipe/screenpipe/tree/main/packages/screenpipe-mcp#installation). Capture is local by default; configured cloud features, remote clients, and model providers can process context off-device. Source-available under the Screenpipe Commercial License.
- **[beta]** [hermes-tag](https://github.com/DanielLi202/hermes-tag) by [DanielLi202](https://github.com/DanielLi202) — Claude-Tag-style context-selection layer for Feishu/Lark and Slack group chats (DingTalk supported, mention-only). Answers only when @-mentioned, selecting bounded evidence — the original images, your notes, and the relevant replies — instead of full-history RAG. Per-chat memory isolation with redacted admin audit and lifecycle controls.
- **[beta]** [arelay-hermes-plugin](https://github.com/mmmikael/arelay-hermes-plugin) by [mmmikael](https://github.com/mmmikael) — Delivers cron job output to an [Agent Relay](https://arelay.app) end-to-end encrypted inbox via `--deliver arelay`. Reports and media arrive in a private web inbox you unlock with a passkey, instead of scrolling gateway logs. MIT licensed.
- **[beta]** [Agent37 Gateway](https://github.com/agent37-platform/gateway) by [Agent37](https://github.com/agent37-platform) — Single Responses-style HTTP/SSE API that routes chat turns to a local Hermes worker or an OpenClaw backend, with reconnectable stream replay
- **[beta]** [Hermes Live Discord Agent Plugin](https://github.com/Capslockb/hermes-live-discord-agent-plugin) by [Capslockb](https://github.com/Capslockb) — Full-duplex Discord voice bridge to the Gemini Multimodal Live API, with 40+ function tools, vision, per-user memory, and mid-call delegation to Codex/OpenCode. Standalone plugin, MIT.

<br>

## Detection & Media Forensics

> Skills for verifying whether media is real or AI-generated — essential for agents that ingest user-submitted audio, images, video, or text.

- **[beta]** [resemble-ai/detect-skill](https://github.com/resemble-ai/detect-skill) by [resemble-ai](https://github.com/resemble-ai) — Deepfake detection and media safety for agents. Detects AI-generated audio, images, video, and text; traces audio source (ElevenLabs, Resemble, etc.); applies invisible watermarks for provenance tracking; verifies speaker identity (Beta). Core principle: never declare media real or fake without a completed detection result.

<br>

## Multi-Agent & Swarms

> Frameworks and tools for running multiple Hermes agents, or Hermes alongside other agents.

- **[production]** [Agora](https://github.com/yzy806806/agora) by [yzy806806](https://github.com/yzy806806) — Multi-agent team plugin for Hermes. Workers with SOUL.md identities, event-driven discussions with chair/speaker/vote flow, heartbeat cron, kanban dispatch, AGENTS.md shared context. 17 tools, 3 hooks, 8 role templates, dashboard UI. Used to build [docmind](https://github.com/yzy806806/docmind) (99k LOC, 2262 tests).
- **[experimental]** [Ankh.md](https://github.com/Abruptive/Ankh.md) by [Abruptive](https://github.com/Abruptive) — TAW Agent x Hermes multi-agent swarm framework. Coordinates multiple agents toward shared goals with distributed task execution.
- **[experimental]** [gladiator](https://github.com/runtimenoteslabs/gladiator) by [runtimenoteslabs](https://github.com/runtimenoteslabs) — Two autonomous AI companies compete for GitHub stars. A hackathon project exploring agent competition dynamics.
- **[beta]** [bigiron](https://github.com/supermodeltools/bigiron) by [supermodeltools](https://github.com/supermodeltools) — AI-native SDLC with Hermes and Supermodel code graph. Full software development lifecycle run by coordinated agents.
- **[beta]** [opencode-hermes-multiagent](https://github.com/1ilkhamov/opencode-hermes-multiagent) by [1ilkhamov](https://github.com/1ilkhamov) — 17 specialized agents for OpenCode AI. Each agent has a defined role and communicates through structured interfaces.

<br>

## Domain Applications

> Purpose-built applications using Hermes for specific domains.

- **[experimental]** [hermes-embodied](https://github.com/bryercowan/hermes-embodied) by [bryercowan](https://github.com/bryercowan) — Self-improving robotics via VLA model fine-tuning. Applies the Hermes learning loop to physical robot control.
- **[beta]** [hermescraft](https://github.com/bigph00t/hermescraft) by [bigph00t](https://github.com/bigph00t) — Embodied AI companion for Minecraft with persistent memory. Tracks inventory, learns building preferences, and retains context across sessions.
- **[experimental]** [Hermes-mars-rover](https://github.com/Snehal707/Hermes-mars-rover) by [Snehal707](https://github.com/Snehal707) — Mars rover simulator using ROS2 and Gazebo. Applies Hermes's skill creation loop to improve navigation over time.
- **[beta]** [anihermes](https://github.com/rodmarkun/anihermes) by [rodmarkun](https://github.com/rodmarkun) — Local anime server and tracker with a natural language interface. Browse, track, and get recommendations through conversation.
- **[beta]** [job-scout-agent](https://github.com/Christabel337/job-scout-agent) by [Christabel337](https://github.com/Christabel337) — Autonomous job hunting agent that searches listings, tracks applications, and manages the full job search pipeline.
- **[beta]** [hermes-ai-infrastructure-monitoring-toolkit](https://github.com/JackTheGit/hermes-ai-infrastructure-monitoring-toolkit) by [JackTheGit](https://github.com/JackTheGit) — Infrastructure monitoring, cost forecasting, and alerting via Telegram. Uses cron scheduling for continuous checks.
- **[experimental]** [hermes-genesis](https://github.com/Ridwannurudeen/hermes-genesis) by [Ridwannurudeen](https://github.com/Ridwannurudeen) — Autonomous living world engine with procedural generation. Creates and maintains virtual environments that grow in complexity over time.
- **[experimental]** [hermes-legal](https://github.com/Lethe044/hermes-legal) by [Lethe044](https://github.com/Lethe044) — Contract risk analysis with English and Turkish support. Identifies risky clauses and summarizes legal obligations.
- **[beta]** [hermes-startup-architect](https://github.com/dlkakbs/hermes-startup-architect) by [dlkakbs](https://github.com/dlkakbs) — Generates investor-ready kits from startup ideas — market analysis, pitch deck, and financial projections.
- **[beta]** [Hermes Startup](https://github.com/33hodl/hermes-startup) by [33hodl](https://github.com/33hodl) — Free guided path to a first genuine dollar with Hermes Agent: 10 private questions return all 10 proven ideas, researched and ranked with the reason why (no income guarantee). Optional one-time US$10 builds and runs the chosen idea. Open source (MIT), no subscription, no signup.
- **[beta]** [mercury](https://github.com/hxsteric/mercury) by [hxsteric](https://github.com/hxsteric) — Multi-chain blockchain cash flow analyzer with a WebGL dashboard. On-chain forensics and flow visualization.
- **[experimental]** [hermes-research-agent](https://github.com/Aum08Desai/hermes-research-agent) by [Aum08Desai](https://github.com/Aum08Desai) — Autonomous LLM research agent. Handles literature review, hypothesis generation, and experiment design end-to-end.
- **[beta]** [erpclaw](https://github.com/avansaber/erpclaw) by [AvanSaber](https://github.com/avansaber) — AI-native open-source ERP and accounting you self-host and run in plain English. Invoicing, inventory, general ledger, payroll, and multi-company books in one shared database.
- **[production]** [Violin](https://github.com/Strategic-Automation/violin) by [Strategic-Automation](https://github.com/Strategic-Automation) — Supervised, agentic Hermes pentest profile: 31 methodology playbooks (OWASP Top 10, API Top 10, LLM Top 10), interactive scoping + approval gates, optional `violin-guard` plugin. Installs with `hermes profile install https://github.com/Strategic-Automation/violin`. Hermes-native, no extra API keys.
- **[beta]** [openInvest](https://github.com/longsizhuo/openInvest) by [longsizhuo](https://github.com/longsizhuo) — Self-hosted investment decision runtime. Four independent LLM roles (Macro Strategist, Quant Analyst, Risk Officer, CIO) debate any yfinance symbol (US / HK / A-share / ETF / crypto / commodities) and return a calibrated BUY/HOLD/SELL verdict — never places real orders, local SQLite ledger only. Install: `hermes plugins install longsizhuo/openInvest --enable`; MCP backend via `uvx openinvest mcp`.

<br>

## Forks & Derivatives

> Notable forks and derivative projects that take Hermes in new directions.

- **[beta]** [hermes-agent-camel](https://github.com/nativ3ai/hermes-agent-camel) by [nativ3ai](https://github.com/nativ3ai) — Hermes with CaMeL trust boundaries integrated into the agent loop. For safety-critical deployments requiring formal trust verification.
- **[experimental]** [orahermes-agent](https://github.com/jasperan/orahermes-agent) by [jasperan](https://github.com/jasperan) — Oracle AI Agent Harness integrating OCI GenAI and Oracle 26ai. An enterprise on-ramp for Oracle environments.
- **[beta]** [hermes-alpha](https://github.com/kaminocorp/hermes-alpha) by [kaminocorp](https://github.com/kaminocorp) — Cloud-deployed Hermes with pre-configured infrastructure templates. Skips local setup entirely.
- **[experimental]** [hermes-skill-distillation](https://github.com/beardthelion/hermes-skill-distillation) by [beardthelion](https://github.com/beardthelion) — Generates agentic training trajectories from real-world tasks for producing fine-tuning data at scale.

<br>

## Guides & Documentation

> Tutorials, documentation, and learning resources.

- **[beta]** [hermes-agent-docs](https://github.com/mudrii/hermes-agent-docs) by [mudrii](https://github.com/mudrii) — Community documentation for Hermes Agent. Covers v0.2.0 in detail — a useful supplement to the official docs for deployment patterns.
- **[production]** [hermes-wsl-ubuntu](https://github.com/metantonio/hermes-wsl-ubuntu) by [metantonio](https://github.com/metantonio) — Step-by-step WSL2 Ubuntu setup guide for running Hermes on Windows.
- **[beta]** [HermesWiki](https://github.com/martymcenroe/HermesWiki) by [martymcenroe](https://github.com/martymcenroe) — Community-maintained wiki with practical patterns and deployment advice for building autonomous agents with Hermes.

---

## Operational Playbooks

> Workflow patterns that repeatedly help Hermes teams in production.

- **Nightly self-evolution with guardrails** — Run [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) on a schedule, then add a second verification cron that scores quality and blocks optimization-loop gaming.
- **Managing memory pressure** — If you're losing long-term recall or repeating context, review the [Honcho memory docs](https://hermes-agent.nousresearch.com/docs/user-guide/features/honcho) and evaluate [hindsight](https://github.com/vectorize-io/hindsight) or self-hosted memory backends.
- **Configure session timeout and expiry early** — Use the [configuration docs](https://hermes-agent.nousresearch.com/docs/user-guide/configuration/) to tune session retention for slower-moving threads before you need it.
- **Side-by-side OpenClaw migration** — Keep both systems running during migration using [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) and native Hermes migration paths. Cut over once cron and routing behavior match.
- **Treat USER.md and MEMORY.md as infrastructure** — Keep entries concise, durable, and preference-focused rather than raw notes. High signal beats high volume.
- **Supervised agentic pentesting** — Install [Violin](https://github.com/Strategic-Automation/violin) (`hermes profile install https://github.com/Strategic-Automation/violin`) for authorised recon → exploit validation → reporting. 31 skill-based playbooks with interactive scoping, scope validation, and approval gates so every target-touching command is confirmed before execution.

---

## Level-Up Blueprints

> Opinionated stacks for getting more from Hermes quickly.

- **Memory that compounds** — Start with Hermes built-in memory. Add [honcho-self-hosted](https://github.com/elkimek/honcho-self-hosted) for stronger cross-session user modeling, [hindsight](https://github.com/vectorize-io/hindsight) for retain/recall/reflect workflows across large histories, and [plur](https://github.com/plur-ai/plur) for portable shared memory in an open engram format. Pair with [flowstate-qmd](https://github.com/amassing3390/flowstate-qmd) for proactive context pre-loading.
- **Self-improvement without drift** — Pair [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) with scheduled regression checks and [lintlang](https://github.com/roli-lpci/lintlang) for prompt and config linting. The goal isn't "evolve faster" — it's "evolve without quietly getting weird."
- **Operator cockpit for real work** — Use [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) for daily use, [mission-control](https://github.com/builderz-labs/mission-control) for multi-agent fleet visibility and cost tracking, and [hermes-webui](https://github.com/sanchomuzax/hermes-webui) for a lighter ops surface.
- **Multi-agent execution layer** — Combine Hermes delegation with [hermes-agent-acp-skill](https://github.com/Rainhoole/hermes-agent-acp-skill) for Codex/Claude Code routing, [zouroboros-swarm-executors](https://github.com/marlandoj/zouroboros-swarm-executors) for local executor handoff, and [bigiron](https://github.com/supermodeltools/bigiron) for specialized agent roles.
- **Migration and deployment hardening** — Keep [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) in the toolkit even if you prefer the native migration path. For repeatable deploys: [nix-hermes-agent](https://github.com/0xrsydn/nix-hermes-agent), [hermes-agent-docker](https://github.com/xmbshwll/hermes-agent-docker), or [evey-setup](https://github.com/42-evey/evey-setup) depending on how opinionated you want the stack.
- **Paperclip-governed ops** — For teams running Hermes inside a governed company workflow, combine [hermes-paperclip-adapter](https://github.com/NousResearch/hermes-paperclip-adapter) with Hermes cron and one of the operator dashboards. That gives you task governance and operational continuity rather than a clever demo that forgets what it was doing.

---

## Related Lists

- [awesome-openclaw](https://github.com/SamurAIGPT/awesome-openclaw) — Curated resources for OpenClaw (formerly Moltbot / Clawdbot), the predecessor agent that Hermes supports migrating from natively. Skills, plugins, UIs, deployment guides, and the broader OpenClaw ecosystem.

---

## Contributing

Before submitting, please check that:

1. The resource is directly related to the Hermes Agent ecosystem or the [agentskills.io](https://agentskills.io) standard
2. It has a clear README and is reasonably maintained
3. It isn't already listed

Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting.

---

## License

[![MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

This list is released under the [MIT License](LICENSE).

All linked projects carry their own license terms.
