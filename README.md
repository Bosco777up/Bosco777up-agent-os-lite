# AIandRealtors Agent OS Lite

**Agent OS Lite is the free real-estate workflow skill that helps ChatGPT, Claude, Codex, and compatible Agent Skills environments use CRM context and authorized MLS/current-market information more safely and reliably.** It checks what capabilities are actually connected, keeps client data separate from transient market data, and refuses to invent current listing facts when no authorized market source is available.

**Version 1.0.3 — Cross-Platform Edition**

## What it does

Agent OS Lite gives your AI two foundational operating rules before you run buyer, seller, or follow-up workflows:

1. **Connector Readiness** — checks whether CRM read, CRM write, current-market read, identity, and authorization capabilities are actually available before promising a workflow.
2. **MLS + CRM Data Boundary** — keeps persistent client/relationship context in the CRM while treating MLS/listing data as transient by default.

### The operating model

- **Client Brain — CRM:** client-stated criteria, relationship history, tasks, timing, motivation, urgency, and next actions.
- **Market Brain — authorized MLS/current-market source:** current listings, price/status changes, comparable activity, and other market facts the user is authorized to access.
- **Reasoning Layer — AI:** combines only the context needed for the current decision.

**Core formula:** Client context + relevant market change = a reason to act.

## Example

A buyer has a stated $600,000 ceiling in the CRM. An authorized market source shows that a relevant property dropped from $615,000 to $589,000. Agent OS Lite helps the AI recognize that current market access is available, keeps the listing data transient, and frames the result as a client-specific reason to follow up rather than dumping raw MLS data into the CRM.

## What Agent OS Lite does not provide

Agent OS Lite does **not** provide MLS access, MLS credentials, IDX rights, data licenses, CRM subscriptions, connector credentials, brokerage approval, or association approval. Use only systems, data, and actions you are authorized to access.

If no authorized current-market source is connected, Agent OS Lite must say so and must not fabricate current listings, price changes, status changes, or comparable market facts.

## Install / use

The SkillHQ-ready skill lives in [`agent-os-lite/`](./agent-os-lite/).

That folder contains:

- `SKILL.md` — the portable Agent Skill;
- `README.md` — marketplace/user documentation;
- `LICENSE.md` — Agent OS Lite Community License;
- `references/CONNECTOR-READINESS.md`;
- `references/MLS-DATA-BOUNDARY.md`.

## Upgrade to the complete Agent OS

Agent OS Lite contains the two free foundation modules only. The paid Agent OS editions add Morning Radar, Buyer Opportunity Radar, Seller Radar, Past Client Radar, Follow-Up Coach, Safe CRM Writeback, Weekly Radar, platform setup packs, connector guidance, governance material, and more.

**Learn more:** https://aiandrealtors.com/agent-os

## Platform note

Native Agent Skill installation varies by platform, plan, workspace, and product surface. Agent OS Lite is designed around the portable Agent Skills format and can also be adapted to supported custom-instruction or agent environments.

## Trademark notice

ChatGPT and OpenAI are trademarks of OpenAI. Claude and Anthropic are trademarks of Anthropic PBC. Flexmls and Spark are trademarks of their respective owners. AIandRealtors Agent OS is an independent product and is not affiliated with or endorsed by OpenAI, Anthropic, FBS/Flexmls, SkillHQ, or referenced CRM vendors unless expressly stated.
