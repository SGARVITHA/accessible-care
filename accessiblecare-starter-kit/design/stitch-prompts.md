# Stitch prompts

How to use: create a Stitch project, import `DESIGN.md` first, then paste the global preamble once, then one screen prompt at a time. Review every screen with the checklist at the end. Use only the synthetic names below. Run Batch 1, review with users, then Batch 2.

## Global preamble

You are designing screens for AccessibleCare, a hospital tool that coordinates sign-language interpreting for Deaf and hard-of-hearing patients in India. Follow the imported DESIGN.md exactly: colours, type, spacing, components, voice. Patient users may have limited reading ability, so use short plain sentences, icons paired with text, and one primary action per screen. Never use emojis, chatbot interfaces, gradients, glass effects, stock photos or lorem ipsum. Every status shows an icon and a text label. Use only synthetic data: hospital "Sample Hospital", patient "Meena", interpreter "Karthik", clinician "Dr. Rao". Show real states (loading, empty, error) when asked. This service is not for emergencies, and patient screens show that notice.

## Batch 1: patient, front desk, clinic staff

B1-P1 Patient home (mobile, 390px). Large status card for the next visit: department, date, time, status badge. Under it, one primary button "View visit details". Secondary links: My communication needs, Request help with a visit, Privacy. Show three states: Confirmed (Karthik, in person, 11:30), At risk (We are updating your support plan), No interpreter requested. Persistent not-for-emergencies notice at the bottom.

B1-P2 Patient visit detail (mobile). Plan summary with interpreter first name and mode, time, place, what to expect (three short steps with icons), a Call-back request button, and a notification history as a simple list. Show Confirmed and Video interpreter arranged variants.

B1-P3 Profile wizard (mobile), five steps with a progress indicator: How do you communicate (large icon choices: Indian Sign Language, other sign, lip-reading, writing, captions), Interpreter preferences (gender, language to speak, video OK?), Helper (optional), Notifications language (English, Tamil, Hindi), Review and confirm. Each step has a short ISL video slot with a caption and a text fallback. Target completion under three minutes.

B1-P4 Consent and privacy (mobile). Five separate toggles, each with a plain one-sentence explanation: save my communication profile; contact me by SMS; show my need to hospital staff; share limited details with my interpreter; allow AI-assisted drafting (off by default). Withdraw reachable in two taps. Show the hospital's notice with a version label.

B1-P5 Same-day request via QR (mobile). Entered from a QR at the registration counter. Step 1: phone number and OTP. Step 2: one large button "I need help communicating today" and a name check. Step 3: confirmation "The front desk has been told. Please wait near the counter." No reason-for-visit field.

B1-P6 Feedback (mobile). Two questions with big icon answers: Was an interpreter present? Yes, No, I did not need one. Did you understand? Yes, Partly, No. Optional note. Thank-you state.

B1-D1 Front-desk Today queue (desktop 1440px). Left navigation. Table of today's visits sorted with At risk first: time, patient first name and last initial, department, clinic, plan, status badge, last updated, row action. Filters: department, status. A top banner area for alarms. Show an At risk row, an Escalated row, and normal rows.

B1-D2 Visit workspace (desktop). Header with patient, hospital ID and flag line. Panels: profile summary, plan with status, candidates (eligible with reasons, excluded with exclusion reasons) with Send offers, offers list, timeline, notification log, actions (Mark arrived, Start video now, Copy to HIS). In this phase show candidates as a placeholder section.

B1-D3 Patient link screen (desktop). Search by phone or name; result card shows name, hospital ID, last four digits of phone; checkbox "I checked the patient's photo ID"; Link button; audit note. Include an unlink and relink confirmation state.

B1-D4 New same-day visit (desktop). A compact form that can be completed in under 60 seconds: patient search, department, clinic, clinician, start time, duration default, Save. Inline validation in plain language.

B1-C1 Clinic daily list (tablet landscape 1280x800). Large type rows sorted by time: time, token with marker, patient first name, flag line with icon (Deaf, ISL, interpreter confirmed 11:30 in person), status badge. Last-updated stamp, Print button. No navigation menus.

B1-C2 Flag card (tablet). One card with the flag line in large type, arrival status, interpreter first name and mode, and the instruction "Do not rely on writing, lip-reading or family." Variants: Confirmed, Video arranged, At risk, Patient declined interpreter.

## Batch 2: interpreter and admin

B2-I1 Interpreter offer page (mobile). Offer card: date, time, place or link, mode, department, first name of patient, communication-style notes, response deadline countdown. Big Accept and Decline buttons. Never show reason for visit, contact details or hospital ID. OTP verification state before accepting.

B2-I2 Interpreter bookings and day-of (mobile). List of upcoming bookings; booking detail with three full-width buttons: On my way, Arrived, Can't make it. Show the state after tapping On my way and the state when the patient has arrived (counter or clinic location).

B2-I3 Interpreter availability editor (mobile). Weekly grid with recurring slots and an exceptions list (block a date). Works on a small screen with large tap targets. Show saved confirmation.

B2-I4 Interpreter cancel with reason (mobile). Reason choices as large options, a note about the late-cancellation window, a confirm step. Show the late-cancellation warning state.

B2-I5 Interpreter profile, documents and agreement (mobile). Certification upload with expiry date and verification status badge, spoken languages, sign variants, agreement acceptance with version label.

B2-A1 Admin policy rules editor (desktop). Grouped sections: risk categories and department mapping, modes by category, lead times, offer deadline, buffers, maximum candidates, fallback ladder order (drag to reorder), late-cancellation window, reminders, quiet hours, escalation contacts. Version history panel and effective date picker. Show a "Preview effect" area.

B2-A2 Interpreter verification queue (desktop). Table of pending interpreters and documents; detail drawer with document preview, expiry, Verify and Reject with reason; filter by source (internal, agency, freelance).

B2-A3 Users and roles (desktop). Table with role, status, last sign-in; Add user; Deactivate; Reset second factor with a confirmation dialog.

B2-A4 Template and consent text manager (desktop). Tabs: flag line, HIS remark, SMS templates (variables shown, DLT approval status), notice text, consent text. Editor with live preview and character counter; version history; re-consent warning when consent text changes.

B2-A5 Reports dashboard (desktop). Headline metric: percentage of Deaf patient visits that started with a confirmed qualified plan, with the definition in a tooltip. Secondary tiles: request-to-confirmation time, fallbacks by type, interpreter no-shows, feedback summary. Month selector and Export CSV. Plain charts, no decoration.

B2-A6 Audit viewer (desktop). Searchable table of events with actor, role, entity, action, time; filters; Export; integrity-check status badge.

B2-A7 Hospital setup (desktop). Sections: hospital profile, departments with risk category and default duration, clinics and rooms, business hours and holidays, escalation contacts and duty phones.

## Review checklist for every generated screen

1. Uses only DESIGN.md colours, type and spacing.
2. Contrast and focus visible; touch targets 44px or larger on mobile.
3. Every status has icon plus text and uses wording from `docs/status-wording.md`.
4. No emojis, gradients, chatbot UI, lorem or stock imagery.
5. Patient screens: one primary action, 16px text or larger, plain language, not-for-emergencies notice.
6. The role sees only data the permission matrix allows (interpreter screens never show reason, contact details or hospital ID).
7. Empty, loading and error states present where requested.
8. Reviewed by the right people: Deaf users for patient screens; interpreters for B2-I screens; a front-desk or admin person for staff screens.
