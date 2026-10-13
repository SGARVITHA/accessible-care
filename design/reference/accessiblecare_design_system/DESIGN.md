---
name: AccessibleCare Design System
colors:
  surface: '#F0FDFA'
  surface-dim: '#cfddd9'
  surface-bright: '#effcf9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#e9f7f3'
  surface-container: '#e3f1ed'
  surface-container-high: '#ddebe7'
  surface-container-highest: '#d8e5e2'
  on-surface: '#121e1c'
  on-surface-variant: '#3e4947'
  inverse-surface: '#273331'
  inverse-on-surface: '#e6f4f0'
  outline: '#6e7977'
  outline-variant: '#bdc9c6'
  surface-tint: '#006a63'
  primary: '#005c55'
  on-primary: '#ffffff'
  primary-container: '#0f766e'
  on-primary-container: '#a3faef'
  inverse-primary: '#80d5cb'
  secondary: '#006b5f'
  on-secondary: '#ffffff'
  secondary-container: '#6df5e1'
  on-secondary-container: '#006f64'
  tertiary: '#7f4025'
  on-tertiary: '#ffffff'
  tertiary-container: '#9c573a'
  on-tertiary-container: '#ffe5db'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#9cf2e8'
  primary-fixed-dim: '#80d5cb'
  on-primary-fixed: '#00201d'
  on-primary-fixed-variant: '#00504a'
  secondary-fixed: '#71f8e4'
  secondary-fixed-dim: '#4fdbc8'
  on-secondary-fixed: '#00201c'
  on-secondary-fixed-variant: '#005048'
  tertiary-fixed: '#ffdbce'
  tertiary-fixed-dim: '#ffb598'
  on-tertiary-fixed: '#370e00'
  on-tertiary-fixed-variant: '#72361b'
  background: '#F8FAF9'
  on-background: '#121e1c'
  surface-variant: '#d8e5e2'
  primary-hover: '#115E59'
  card: '#FFFFFF'
  text-muted: '#475569'
  border: '#D5E2DF'
  success: '#15803D'
  success-bg: '#DCFCE7'
  warning: '#B45309'
  warning-bg: '#FEF3C7'
  danger: '#B91C1C'
  danger-bg: '#FEE2E2'
  info: '#1D4ED8'
  info-bg: '#DBEAFE'
  focus-ring: '#1D4ED8'
  dark-background: '#0B1514'
  dark-card: '#12201F'
  dark-surface: '#162927'
  dark-text: '#E6F2F0'
  dark-text-muted: '#A7BBB8'
  dark-border: '#284240'
  dark-primary: '#2DD4BF'
  dark-primary-hover: '#5EEAD4'
typography:
  headline-xl:
    fontFamily: Public Sans
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.02em
  headline-xl-mobile:
    fontFamily: Public Sans
    fontSize: 26px
    fontWeight: '700'
    lineHeight: 34px
    letterSpacing: -0.01em
  headline-lg:
    fontFamily: Public Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-md:
    fontFamily: Public Sans
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  title-lg:
    fontFamily: Public Sans
    fontSize: 18px
    fontWeight: '600'
    lineHeight: 26px
  body-lg:
    fontFamily: Public Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Public Sans
    fontSize: 15px
    fontWeight: '400'
    lineHeight: 22px
  body-sm:
    fontFamily: Public Sans
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-lg:
    fontFamily: Public Sans
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
  label-md:
    fontFamily: Public Sans
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
  label-sm:
    fontFamily: Public Sans
    fontSize: 13px
    fontWeight: '600'
    lineHeight: 18px
  caption:
    fontFamily: Public Sans
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 1rem
  gutter-desktop: 1.5rem
  margin: 1rem
  margin-tablet: 1.5rem
  margin-desktop: 2rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 0.75rem
  space-lg: 1rem
  space-xl: 1.5rem
  space-2xl: 2rem
  space-3xl: 3rem
---

## Brand & Style

### Brand Personality & Core Philosophy
The design system serves clinical coordinators, healthcare administrators, on-demand interpreters, and Deaf and hard-of-hearing patients navigating hospital settings in India. The visual language is calm, dependable, highly legible, and deliberately restrained. It avoids decorative healthcare marketing tropes, stock photography, and playful tech abstractions in favor of utilitarian clarity, operational dignity, and rapid comprehension under stress.

### Design Movement & Aesthetics
The aesthetic combines **Modern Minimal Healthcare** with **Inclusive Functionalism**:
- **Zero Decorative Noise:** High color contrast, solid surfaces, zero text-backed gradients, zero glassmorphism, and zero neo-brutalist raw edges.
- **Multilingual Clarity:** Balanced for Latin and Indic scripts (including Devanagari and Tamil), prioritizing spacious vertical leadings and strong typographic hierarchy.
- **Dual-Modal Signaling:** Every semantic state, status badge, and interactive cue couples an outline icon with explicit text. Color never carries meaning alone.
- **Cognitive Ease:** Low density and linear step-by-step sequencing on patient-facing screens, balanced with high-efficiency structured tabular displays on clinical desktop interfaces.

### Target Audiences & Context of Use
1. **Deaf & Hard-of-Hearing Patients (Mobile):** High visual clarity, simple grade-6 reading comprehension, large status banners, persistent bottom actions, and non-emergency indicators.
2. **Hospital Front-Desk & Admins (Desktop):** Information-dense appointment queues, visible risk states, split-pane inspection panels, and robust keyboard navigation.
3. **Clinic Staff & Interpreters (Tablet & Mobile):** Instant touch targets, high contrast against variable hospital lighting, clear accept/decline triggers, and unambiguous scheduling cards.

## Colors

### Palette Architecture
The palette is built around deep medical teal (`#0F766E`), selected for high contrast against light surfaces and an inherent psychological association with calm stability. Tinted neutral backgrounds (`#F8FAF9`, `#F0FDFA`) prevent harsh screen glare during long hospital shifts while maintaining high contrast with primary typography (`#172321`).

### Semantic Status Pairings
Every semantic state requires both foreground and background pairings that meet WCAG 2.2 AA standards (minimum 4.5:1 for body copy and 3:1 for graphical UI elements):
- **Success (Confirmed, Video Confirmed):** Foreground `#15803D` paired with background `#DCFCE7`.
- **Information (Plan Pending, Offers Out, Accepted Awaiting Staff):** Foreground `#1D4ED8` paired with background `#DBEAFE`.
- **Warning (At Risk):** Foreground `#B45309` paired with background `#FEF3C7`.
- **Danger (Escalated, Action Required):** Foreground `#B91C1C` paired with background `#FEE2E2`.
- **Neutral (Completed, Not Required, Cancelled):** Foreground `#475569` paired with background `#F0FDFA` or bordered `#FFFFFF`.

### Accessibility & Application Rules
- **Color Independence:** Never use color as the sole indicator of status, priority, or action. All alerts, status chips, and table records must include explicit text labels and supporting icons.
- **Secondary Usage Constraint:** Secondary Teal (`#14B8A6`) is reserved for decorative indicators, progress lines, and selected border outlines. It must never be applied to text on white or light teal surfaces.
- **Focus Ring Integrity:** Focus states must render a crisp 3px outline in `#1D4ED8` with a 2px offset across both light and dark themes to guarantee keyboard navigation visibility.

## Typography

### Font Stack & Script Compatibility
The primary family is configured with system fallback parity to guarantee instant loading without layout shift across resource-constrained clinic networks:
`"Public Sans", -apple-system, BlinkMacSystemFont, "SF Pro Text", "Helvetica Neue", Arial, "Noto Sans Devanagari", "Noto Sans Tamil", sans-serif`.

The inclusion of `Noto Sans Devanagari` and `Noto Sans Tamil` ensures native legibility for bilingual Indian healthcare interfaces.

### Hierarchy & Content Rules
- **Patient Floor Constraint:** On patient-facing mobile screens, body text must never scale below `16px` (`body-lg`) to preserve effortless legibility across varying degrees of vision impairment and digital literacy.
- **Line Heights:** Body and label text maintain an explicit 1.4–1.5 line-height ratio to prevent visual crowding in multi-script headings and complex medical disclaimers.
- **Copy Principles:** Keep sentences short and declarative. Use standardized terminology throughout the ecosystem (e.g., use "interpreter request" rather than "booking"). Always indicate what happens next. Never display abbreviations without an initial full-text definition.

## Layout & Spacing

### Layout Models by Form Factor
- **Patient Interfaces (Mobile-First, min 360px):** Single-column layout. High top-padding for persistent urgency/status banners. Maximum one primary action per screen pinned to the bottom viewport bar to enable thumb-driven interaction.
- **Front-Desk Intake & Coordination (Desktop, 1280px+):** Fixed 240px left-rail navigation, fluid central data table (prioritizing escalated and at-risk queues), and an optional collapsible 380px contextual inspector rail on the right.
- **Clinic Staff (Tablet, Landscape):** 2-column split card view with oversized tap targets and 20px typography. Hidden nested dropdowns are forbidden; actions are immediately surfaced on the card surface.
- **Interpreter Flow (Mobile):** Linear feed of active request cards displaying prominent dual-trigger actions ("Accept" vs "Decline") followed by day-of full-width confirmation bars.

### Grid & Density Rules
- Mobile layouts use a 4-column grid with `1rem` margins and `1rem` gutters.
- Desktop views leverage a 12-column layout with `2rem` outer page margins and `1.5rem` gutters.
- Desktop data density standardizes table row heights at exactly `40px` for rapid scanning, whereas touch environments utilize card units with minimum `48px` to `56px` heights.
- Minimum interactive touch targets across all breakpoints are strictly enforced at `44x44px`.

## Elevation & Depth

### Visual Hierarchy Strategy
The design system enforces flat, low-contrast elevation. It deliberately rejects ambient colored blurs, heavy dropshadows, and skeuomorphic layers to eliminate visual friction in high-stress medical environments.

### Surface Separation & Layering
1. **Canvas Level (0dp):** Tinted medical canvas (`#F8FAF9`) creates visual rest and reduces glare.
2. **Structural Sections (0dp Tinted):** Sub-panels, drawer backgrounds, and grouping containers use subtle teal surface wash (`#F0FDFA`) combined with a `1px` solid border (`#D5E2DF`).
3. **Card & Interactive Surfaces (1dp):** Pure white cards (`#FFFFFF`) with a `1px` border in `#D5E2DF`. Where subtle physical separation is needed (such as sticky headers and floating bottom action trays), use a single low-impact shadow:
   `box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.06);`
4. **Modals & Overlays (2dp):** Restricted strictly to administrative and front-desk workflows. Backdrops use a flat `rgba(23, 35, 33, 0.4)` scrim. Never display modals over the primary patient journey.

## Shapes

### Corner Radii
The shape system uses balanced, accessible rounding:
- **Base Components (Inputs, Selectors, Table Rows):** `10px` (`0.625rem`) corner radius for controlled structure.
- **Cards & Structural Containers:** `14px` (`0.875rem`) corner radius to create friendly, non-threatening healthcare content blocks.
- **Status Badges, Chips & Action Pills:** Full pill rounding (`9999px`) to immediately distinguish semantic chips from form fields and rectangular content cards.

### Border Definitions
Interactive inputs, cards, and container divisions feature uniform `1px` borders rendered in `#D5E2DF` (or `#284240` in dark mode). Decorative borders, dotted outlines, and varied stroke weights are forbidden.

## Components

### Buttons
- **Primary:** Solid `#0F766E` background with `#FFFFFF` text. Hover state shifts to `#115E59`.
- **Secondary:** Transparent background with `1px` solid `#0F766E` border and `#0F766E` text.
- **Danger:** Solid `#B91C1C` background with `#FFFFFF` text. Reserved strictly for cancellations, escalation triggers, and permanent rejections.
- **Text:** Transparent background with `#0F766E` text and underline on hover.
- **Specifications:** Minimum height `44px` (touch-target compliant). When triggered, loading states preserve the exact component width, replace text with an accessible inline circular spinner, and set `aria-busy="true"`.

### Status Badges
- **Structure:** Pill container (`rounded-full`), `space-xs` vertical padding, `space-sm` horizontal padding.
- **Composition:** Outline status icon (16x16px) followed by text label in `label-sm` weight.
- **Rules:** Text label is mandatory. Color codes match semantic definitions (e.g., green icon + text on green tint for "Confirmed"). Cancelled statuses use `#475569` text with strike-free typography.

### Input Fields & Controls
- **Layout:** High-contrast label placed permanently above the input (`14px`, `#172321`, semi-bold). Never rely on placeholder copy as the sole label.
- **Helper & Validation Copy:** Descriptive guidance sits below the field in `caption` size (`#475569`). Error messages include an alert-circle icon rendered in `#B91C1C` alongside descriptive remedial text.
- **Checkboxes & Radios:** Minimum dimensions `20x20px` embedded within a `44x44px` touch zone. Border `1.5px` solid `#D5E2DF`, filling with `#0F766E` on selection with a high-contrast white glyph.

### Cards
- **Base Style:** `#FFFFFF` fill, `1px` solid border in `#D5E2DF`, `14px` border radius, padded with `1rem` (mobile) or `1.5rem` (desktop).
- **Patient Status Card:** Top-of-screen card with tinted header, large text (`20px`), active stage icon, and next-step instructional copy.

### Tables (Front-Desk & Admin)
- **Header:** Sticky positioning with `#F0FDFA` background, uppercase `12px` semi-bold column labels, and sorted arrow indicators.
- **Rows:** `40px` compact height, alternating row divider in `#D5E2DF`. At-risk or escalated appointments are pinned to top rows with visible semantic badges.
- **Row Actions:** Grouped into a trailing menu with explicit, readable text actions rather than mystery meat icon-only controls.

### AI-Assisted & Generated Content
- Where language interpretation summaries or scheduling notes are algorithmically generated, display a sparkle icon paired with an explicit badge labeled `"AI-drafted"`. Include a manual clinical review trigger (`"Review & Approve"`). Chat-bubble interfaces are strictly prohibited.

### Non-Emergency Safety Banner
- Every patient view must feature a high-visibility, static non-emergency disclaimer banner: *"AccessibleCare is for scheduled communication assistance. If you have a medical emergency, alert hospital staff immediately."*