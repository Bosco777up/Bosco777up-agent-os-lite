# Connector Readiness Reference

Use this reference before any workflow that depends on CRM, current-market, email, calendar, or external write actions.

## Capability matrix

Check only the capabilities needed for the current task.

| Capability | What counts as available | If unavailable |
|---|---|---|
| CRM read | An authorized connector/tool can retrieve relevant client records | Use only client facts the user provides in the conversation |
| CRM write | An authorized connector/tool can create/update the requested CRM field, note, or task | Draft the proposed writeback and state that it was not saved |
| Current-market read | An authorized MLS/current-market source can retrieve current listing/market facts | Do not invent current listings, prices, status changes, comps, or market events |
| Identity/authorization | The environment establishes the user/account context required for the source | Do not infer entitlement from profession, brokerage, location, or prior access |
| Email/calendar write | An authorized tool can send/create the requested item | Draft or propose only; do not claim the action occurred |

## Readiness output

When a missing capability materially changes the result, state it plainly:

- **Available:** what can be used now.
- **Unavailable:** what is missing.
- **Degraded mode:** what can still be done safely.

Do not turn readiness checks into long technical audits when a concise answer is enough.

## No invented connectors

Never claim that a named CRM, MLS, market source, browser, email provider, or AI platform is connected merely because the user mentions it.

Presence in documentation is not proof that the current environment exposes the connector.
