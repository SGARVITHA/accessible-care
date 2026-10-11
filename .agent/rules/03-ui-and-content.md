# UI and content (always apply to frontend work)

- Use tokens from `DESIGN.md` and components from `packages/ui` only. No ad-hoc colours or one-off components.
- Status badges render from the derived status and the wording constants in `docs/status-wording.md`. Do not invent status text.
- No hardcoded user-facing strings: all text goes through i18n keys with English, Tamil and Hindi entries (Tamil and Hindi may be marked pending review).
- Patient screens: one primary action per screen, text at 16px or larger, reading level around grade 6, icons always paired with text, 44px touch targets.
- No emojis as icons or status. No chatbot interface. No decorative gradients, glass, neon or dotted backgrounds. No lorem, demo, or placeholder copy in anything that ships.
- Skeleton loaders, honest actionable errors, empty states that say what to do next. Never optimistic updates for critical actions.
- Visible focus, full keyboard operation, reduced-motion support, captions on all video.
- Staff queue refreshes by polling every 15 to 30 seconds and on tab focus. Show a last-updated time on every flag surface.
- AI-assisted text is labelled "AI-drafted" with a sparkle icon and requires an explicit approve action.
