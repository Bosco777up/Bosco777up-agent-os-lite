# SkillHQ Seller Notes — Agent OS Lite

Use this repository only for the free Agent OS Lite discovery edition. Do not add paid Starter, Pro, Broker, Buyer Opportunity Radar, Seller Radar, or other paid Agent OS source here.

## Listing settings

- Skill: `agent-os-lite`
- Price: `€0`
- Category: `productivity`
- Tags: `real-estate,crm,sales,mls,buyers,sellers,follow-up,productivity`
- Short description: `Free CRM + MLS workflow foundation for real-estate agents using Claude, ChatGPT, Codex, or compatible Agent Skills environments.`
- Product/upgrade page: https://aiandrealtors.com/agent-os

## Publish from Windows PowerShell

From a clone of this repository, run:

```powershell
.\PUBLISH-SKILLHQ.ps1
```

The helper installs the official SkillHQ CLI if needed, opens SkillHQ authentication if needed, validates `agent-os-lite/`, and submits the free listing.

## Paid marketplace strategy

Keep the paid skill source private. Publish paid skills directly from a local package through the SkillHQ CLI rather than making their source public.

Recommended first paid listing:

- Buyer Opportunity Radar
- Price: `€39`
- Category: `productivity`
- Tags: `real-estate,crm,sales,mls,buyers,follow-up,lead-management,productivity`

The full Agent OS product remains available at https://aiandrealtors.com/agent-os.
