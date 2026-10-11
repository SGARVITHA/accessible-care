# Design review notes: patient screens (Stitch batch 1)

Status: visual direction approved for the patient screens. The copy and behaviour below override what Stitch generated. Agents must follow these when implementing.

## Global
- One NotForEmergencies component: same icon, label "Not for emergencies", text "If you need urgent help, go to the Emergency desk at {hospital} or ask someone near you to help." Never "Safety Notice", never a phone number.
- Headers use short titles that never truncate (Home, Your visit, Your needs, Privacy, Feedback).
- ISL video slots: neutral placeholder (play icon, caption "ISL video guide", duration). No photographs or generated people until real clips exist.
- No invented logistics or promises: no arrival times, no who will meet the patient, no who will call or contact, no claim that records are saved or used by anyone. Use only the canonical status wording and configured hospital text.
- Never say "call your name". Deaf patients cannot hear it. Say "Wait near the counter."
- No marketing claims such as "Secure Record" or "Recommended".

## Per screen
- Sign-in: six-digit code, not four. Phone entry and code entry are two separate steps.
- Same-day request: confirmation says the front desk has been told and to wait near the counter. No "call your name or wave". No SMS-confirmation line until a template exists.
- Feedback thank-you: "Thank you. Your answers help the hospital improve interpreting." Remove "saved to your care record", remove "interpreters will use this", remove the visit history link.
- Profile wizard: remove interpreter names from copy ("If an in-person interpreter is not free, a video interpreter can join on a tablet."). Remove "Recommended". Short step titles.
- Consent: every toggle starts OFF on first visit; core consents need an explicit accept. AI toggle text: "Let the hospital use AI to help write messages to you. Staff check every message before it is sent." Never mention visit notes or anything clinical. Remove the "Secure Record" chip.
- Visit details: "What to expect" uses only configured hospital text. Default steps: 1 Check in at the front desk. 2 Show this screen to staff. 3 Your visit. Remove the arrive-by time and "will meet you". Button label "Ask the hospital for a call-back" (not "coordinator"). Remove the reference code unless it is the appointment reference.
- Home: locked version only.

# Design review notes: staff screens (Stitch batch 1, desk and clinic)

Status: layout direction only. Stitch added many features and claims that are not in the PRD. Build only what the PRD and BACKLOG specify.

## Global
- Remove all compliance and quality claims: "NABH Compliant", "Verified Registry", "Secure Network", policy numbers, any Rights of Persons with Disabilities Act reference.
- Remove invented metrics and scores: match scores, dispatch latency, doctor capacity, shift names, certification levels such as "ISL-L3", interpreter coverage percentages.
- Remove invented features: Calendar and Shifts, Interpreters Directory in the front-desk nav (Phase 3 and admin only), Department Requests, drafts, Page Patient and Doctor, escalation case panels, Pull on-duty video interpreter, Rapid Reassignment Protocols, Clinical Station Best Practices (including the photo), Room next patients, Clinical Accommodations Note, "Auto-matched", "Instant mobile push" (v1 is SMS only), and promises such as "zero-delay" or "hardware staged".
- Never name Aadhaar or other ID types. Say "photo ID". We never store ID.
- No clinical fields or wording: no "clinical context", no consent or diagnosis instructions, no "Open Chart".
- SMS previews must never mention interpreter, sign language, deaf or disability. Use only the registered templates in PRD Appendix A.
- Front-desk nav: Today queue, Help requests, New visit, Patients (link), Escalations (later). Admin screens hold the rest.
- Statuses come only from docs/status-wording.md.

## Per screen
- Queue: at-risk first; alarm banner; columns time, patient, department and clinic, plan, status, updated, action. Remove the right-hand panels.
- Visit workspace: keep header (patient, hospital ID, flag line, Mark arrived, Start video now, Print slip, Copy to HIS), plan, candidates with eligible and excluded reasons, offers, timeline, notification log, consent status. Staff choose candidates and send offers; no auto-assignment wording.
- Link screen: keep search, result card, photo ID checkbox, link, flag discrepancy, unlink with reason, audit note. Remove the HIS integration banner and ID type names. Show only the last four digits of the phone number.
- Same-day visit: keep the compact form (patient search, department, clinic, clinician, start, duration, save). Remove the automated preview scoring and drafts. Must be completable in under 60 seconds.
- Clinic list: read-only. Only Print and last-updated. Remove Open Chart, Call Patient, Admit, Assign Relief, Prep Unit, Test Video Link and Review Accommodations. Never show "Call Patient"; the patient may be Deaf.
- Flag card: keep the one-line flag, arrival, interpreter first name and mode, and the line "Do not rely on writing, lip-reading or family." Remove consent and diagnosis instruction text, ID and level claims, action buttons, the tips panel and next patients. Keep the four variants: Confirmed, Video arranged, At risk, Patient declined.
