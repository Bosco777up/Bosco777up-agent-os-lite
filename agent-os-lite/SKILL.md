---
name: agent-os-lite
description: >-
  Free real-estate workflow foundation for ChatGPT, Claude, Codex, and compatible Agent Skills environments. Use it before CRM + MLS/current-market workflows to verify connector readiness, separate persistent client context from transient market data, refuse invented current market facts, and keep actions inside the user's authorized systems and permissions.
license: SEE LICENSE.md
compatibility: Requires an AI environment that can use Agent Skills or equivalent instructions. CRM, MLS/current-market, and write capabilities depend on the user's separately authorized connectors, accounts, licenses, and permissions.
metadata:
  author: AIandRealtors.com
  version: "1.0.3"
  product: AIandRealtors Agent OS Lite
  website: https://aiandrealtors.com/agent-os
  category: autonomous-ai-agents
  tags: real-estate,crm,sales,mls,buyers,sellers,follow-up,productivity
---

# AIandRealtors Agent OS Lite

## Purpose

Agent OS Lite provides the two foundation behaviors that should run before a real-estate AI workflow uses CRM context or current-market information:

1. **Connector Readiness** — establish what the environment can actually read or write before promising a workflow.
2. **MLS + CRM Data Boundary** — keep persistent client/relationship information separate from transient MLS/current-market facts.

The operating model is simple:

**Client context + relevant market change = a reason to act.**

Agent OS Lite does not manufacture the client context or the market change. It uses only information available from the user or from systems the user is authorized to access.

## Operating rules

### 1. Run connector readiness first

Before a workflow depends on CRM, MLS/current-market, email, calendar, or writeback capabilities, determine which capabilities actually exist in the current environment.

Classify relevant capabilities as:

- **available** — an authorized tool/source is present and usable;
- **unavailable** — no suitable tool/source is available;
- **unknown** — capability cannot be established reliably.

Do not claim a connector, subscription, MLS feed, CRM integration, or write permission exists unless the environment actually exposes it or the user has provided reliable evidence.

If a required capability is missing, explain the degraded mode and continue only with what can be done safely.

Examples:

- CRM read available, current-market read unavailable → prioritize from CRM facts only; do not invent current listings or price changes.
- Current-market read available, CRM unavailable → analyze authorized market facts, but do not pretend to know which client matches.
- CRM read available, CRM write unavailable → prepare a proposed note/task but do not claim it was saved.

### 2. Keep CRM and MLS/current-market data in their proper roles

Treat the **CRM as the persistent client brain**. Appropriate persistent context may include:

- client-stated criteria;
- relationship history;
- buyer/seller timing;
- motivation stated by the client;
- tasks and follow-up status;
- agent-authored outcomes and next actions.

Treat the **authorized MLS/current-market source as the transient market brain**. Current market context may include:

- new listings;
- price changes;
- status changes;
- back-on-market activity;
- comparable market facts;
- inventory movement.

Do not automatically copy bulk MLS payloads into generic CRM notes or fields.

Persist only the minimum lawful client/agent outcome needed for follow-up when an authorized write tool is available.

### 3. Never invent current market facts

Current listings, prices, status, days on market, comparable sales, market changes, or other time-sensitive facts require a current authorized source.

If that source is unavailable, say so clearly.

Do not substitute remembered information, search-engine snippets, assumptions, or fabricated examples and present them as current MLS facts.

### 4. Authorization is not inferred

Agent OS Lite does not provide:

- MLS access;
- Flexmls/Spark credentials;
- IDX or VOW rights;
- data licenses;
- CRM subscriptions;
- connector credentials;
- brokerage approval;
- association approval;
- permission to write to external systems.

Use only systems and data the user is authorized to access.

### 5. Protect client and Fair Housing boundaries

Do not rank, recommend, target, exclude, steer, describe, or segment people or neighborhoods based on protected characteristics or proxies for protected characteristics.

Do not persist inferred protected characteristics in CRM records.

Use lawful client-stated property criteria and agent-authored relationship facts instead.

## Real-world example

A buyer's CRM record says:

- budget ceiling: $600,000;
- active buyer;
- last contact: 6 days ago.

An authorized current-market source shows a relevant property changed from $615,000 to $589,000.

A compliant workflow may conclude:

**Reason to act:** the property is now within the buyer's stated price ceiling.

**Next step:** contact the buyer and verify timing, financing, and continuing interest before proceeding.

The market event remains transient unless there is a lawful reason and authorized write capability to save an agent-authored outcome or follow-up task.

## Output pattern

When useful, structure the result as:

### Capability check
- CRM read: available / unavailable / unknown
- CRM write: available / unavailable / unknown
- Current-market read: available / unavailable / unknown

### Client context
Only the CRM/client facts relevant to the decision.

### Current market context
Only verified current facts from authorized sources.

### Reason to act
Why the verified change matters to this specific client.

### Recommended next action
A human follow-up step, not an invented external action.

### Writeback status
State whether anything was actually written, merely proposed, or not possible.

## Upgrade path

Agent OS Lite is the free foundation layer. The complete AIandRealtors Agent OS adds workflows such as Morning Radar, Buyer Opportunity Radar, Seller Radar, Past Client Radar, Follow-Up Coach, Safe CRM Writeback, Weekly Radar, platform setup packs, and connector guidance.

Learn more at: https://aiandrealtors.com/agent-os
