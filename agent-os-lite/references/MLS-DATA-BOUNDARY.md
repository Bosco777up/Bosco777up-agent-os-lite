# MLS + CRM Data Boundary Reference

## Principle

Use the CRM as the persistent client/relationship system of record. Use authorized MLS/current-market data as transient decision context unless a narrower listing-derived fact is lawfully needed for an agent-authored follow-up outcome.

## Good CRM persistence

Examples of facts that usually belong on the client side when lawfully collected and relevant:

- client-stated price range;
- client-stated property criteria;
- timing and motivation stated by the client;
- relationship history;
- follow-up state;
- tasks;
- agent-authored call outcomes;
- next actions.

## Keep market data transient by default

Examples:

- current listing payloads;
- price/status snapshots;
- comparable-sale payloads;
- market search results;
- bulk property details;
- listing remarks obtained from an authorized source.

Do not dump raw market payloads into generic CRM notes or fields.

## Minimal writeback

When an authorized CRM write action is appropriate, prefer a concise agent-authored outcome such as:

- "Price change created possible match; agent to confirm buyer timing."
- "Client confirmed max budget remains $600,000."
- "Follow-up scheduled for Thursday."

Do not persist inferred protected characteristics or neighborhood demographic assumptions.

## Current-fact rule

Time-sensitive listing and market facts require a current authorized source. If one is unavailable, state that clearly and stop short of claiming that a listing is new, reduced, active, back on market, sold, or otherwise changed.
