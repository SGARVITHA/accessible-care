# AccessibleCare Design System

Product: a hospital tool that coordinates sign-language interpreting for Deaf and hard-of-hearing patients.
Audiences: Deaf patients on phones (some with limited reading ability), hospital front-desk staff on desktops, clinic staff on shared tablets, interpreters on phones, hospital admins on desktops.
Feel: calm healthcare, trustworthy, plain, modern. Restrained. No decoration for its own sake.

## Colors (tokens)

Light theme:
- primary: #0F766E (deep teal) - main actions, links
- primary-hover: #115E59
- secondary: #14B8A6 - accents, selected states (never for text on white)
- surface: #F0FDFA - subtle tinted panels
- background: #F8FAF9
- card: #FFFFFF
- text: #172321
- text-muted: #475569
- border: #D5E2DF
- success: #15803D, success-bg: #DCFCE7
- warning: #B45309, warning-bg: #FEF3C7
- danger: #B91C1C, danger-bg: #FEE2E2
- info: #1D4ED8, info-bg: #DBEAFE
- focus-ring: #1D4ED8, 3px, 2px offset

Dark theme: background #0B1514, card #12201F, surface #162927, text #E6F2F0, text-muted #A7BBB8, border #284240, primary #2DD4BF, primary-hover #5EEAD4.

Rule: colour never carries meaning alone. Every status has a text label and an icon.

## Status badge mapping

Text label always shown. Colours: Confirmed = success; Plan pending, Offers out, Accepted awaiting staff = info; At risk = warning; Escalated = danger; Video confirmed = success; Not required = neutral; Completed = neutral; Cancelled = neutral with strike-free text.

## Typography

Font stack: -apple-system, BlinkMacSystemFont, "SF Pro Text", "Helvetica Neue", Arial, "Noto Sans Tamil", "Noto Sans Devanagari", sans-serif. No web fonts.
Sizes: page title 28-32px/700; section heading 20-24px/600; body 15-16px/400, line-height 1.5; secondary 13-14px; buttons 14-16px/600. Minimum body size 16px on patient screens.

## Shape and spacing

Spacing scale 4, 8, 12, 16, 24, 32, 48. Radius 10-14px (cards 14, inputs 10, pills 999). Borders 1px. Shadows light and rare: 0 1px 2px rgba(0,0,0,0.06). Minimum touch target 44x44px. Staff desktop density: tables with 40px rows.

## Layout

- Patient (mobile first, 360px up): single column, one primary action per screen, bottom primary button, large status card at top.
- Front desk (desktop 1280px up): left rail navigation, today queue as a table with at-risk rows first, right-side detail panel.
- Clinic staff (tablet landscape): large list rows, 20px text, no hidden menus.
- Interpreter (mobile): offer cards with big Accept and Decline, day-of buttons full width.
- Admin (desktop): settings in grouped sections, tables with filters, form sections with clear Save and versioning notices.

## Components

Buttons: primary (filled teal), secondary (outlined), danger, text. Height 44px minimum. Loading state replaces label with a spinner and keeps width.
Inputs: visible label above field, helper text below, error text with an icon, never placeholder-only labels.
Status badge: pill, icon + text.
Cards: white, 1px border, 14px radius.
Tables: sticky header, sortable columns, row actions in a trailing menu with visible labels.
Sheets and modals: focus trapped, close with Escape, never used for the primary patient task.
Toasts: short, auto-dismiss only for success; errors stay until dismissed.
Empty states: say what is missing and the next step. Skeleton loaders for lists and cards.
AI-assisted content: a small sparkle icon with the label "AI-drafted" and an approve action. No chat bubble interface anywhere.

## Iconography

One consistent outline icon set. Icons always paired with text. No emoji as icons or status.

## Motion

Subtle, under 200ms. Respect reduced motion. No auto-playing animation or video.

## Accessibility

WCAG 2.2 AA. Visible focus. Full keyboard operation. Reading level around grade 6. Captions on all video. Never rely on sound. Not-for-emergencies notice visible on every patient page.

## Voice

Short sentences. Plain words. Same word for the same thing everywhere. Say what happens next. Never say "booked" for a help request. No jargon, no abbreviations without expansion on first use.

## Do not

Neon or glass effects, dotted backgrounds, gradients behind text, stock-photo heroes, decorative illustrations, demo or lorem copy, emojis as icons, cluttered dashboards, chatbot-style primary UI, red-green only distinctions.
