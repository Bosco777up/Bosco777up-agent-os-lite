# Agent OS Lite — CRM + MLS Workflow Foundation

Agent OS Lite is the free real-estate workflow foundation for ChatGPT, Claude, Codex, and compatible Agent Skills environments. It checks what connectors and permissions are actually available, keeps persistent CRM context separate from transient MLS/current-market facts, and prevents the AI from inventing current listing data when no authorized source exists.

## Why use it

Real-estate AI workflows break down when the model assumes a CRM is writable, assumes an MLS feed exists, or mixes raw listing data into long-term client records. Agent OS Lite establishes the operating rules before buyer, seller, or follow-up workflows begin.

It helps your AI answer three questions first:

1. **What can I actually read or write?**
2. **Which facts belong in the CRM versus the current-market layer?**
3. **What must I refuse to guess because it requires a live authorized source?**

## Core operating model

**Client Brain — CRM**

Relationship history, client-stated criteria, tasks, timing, motivation, follow-up state, and agent-authored next actions.

**Market Brain — authorized MLS/current-market source**

Current listings, price changes, status changes, back-on-market activity, comparable facts, and inventory movement the user is authorized to access.

**Reasoning Layer — AI**

Combines only the context needed for the current decision and turns it into a clear next action.

**Formula:** Client context + relevant market change = a reason to act.

## Example

A buyer has a stated $600,000 ceiling in the CRM. An authorized market source shows that a relevant property dropped from $615,000 to $589,000.

Agent OS Lite helps the AI recognize that:

- current market access is available;
- the price change is a transient market fact;
- the buyer's stated ceiling is persistent client context;
- the combination creates a legitimate reason for human follow-up.

The appropriate result is not a raw MLS dump. It is a concise next action such as: **contact the buyer, confirm timing and financing are still current, and discuss the property.**

## What is included

- Connector-readiness rules
- CRM vs. MLS/current-market data boundary
- Degraded-mode behavior when connectors are missing
- No-fabrication rule for current market facts
- Authorization boundaries
- Fair Housing guardrails
- Safe output pattern for client + market reasoning

## What Agent OS Lite does not provide

Agent OS Lite does not provide MLS access, MLS credentials, IDX/VOW rights, data licenses, CRM subscriptions, connector credentials, brokerage approval, association approval, or permission to write to external systems.

Use only systems, accounts, data, and actions you are authorized to access.

## Upgrade to the complete Agent OS

The paid AIandRealtors Agent OS editions add:

- Morning Radar
- Buyer Opportunity Radar
- Seller Radar
- Past Client Radar
- Follow-Up Coach
- Safe CRM Writeback
- Weekly Radar
- ChatGPT and Claude setup packs
- Flexmls/Spark, Follow Up Boss, kvCORE, and generic connector guidance
- Broker governance and deployment material

Learn more: https://aiandrealtors.com/agent-os

## Version

1.0.3 — Cross-Platform Edition

## License

See [`LICENSE.md`](./LICENSE.md).
