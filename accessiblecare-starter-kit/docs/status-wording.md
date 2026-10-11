# Canonical status wording

Copy into constants. Patient wording is reviewed with Deaf users. Never invent other status text.

| Constant | Staff meaning | Patient wording (en) |
|---|---|---|
| NOT_REQUIRED | No interpreter needed or patient declined | Your visit is booked. No interpreter requested. |
| PLAN_PENDING | Need exists, no offers yet | We are arranging communication support. |
| OFFERS_OUT | Offers sent, no acceptance yet | We are arranging communication support. |
| ACCEPTED_AWAITING_STAFF | At least one accepted, none confirmed | Interpreter found. The hospital is confirming. |
| CONFIRMED | Booking confirmed | Interpreter confirmed: {first_name}, {mode}, {time}. |
| AT_RISK | Booking cancelled or no response near visit | We are updating your support plan. We will message you soon. |
| VIDEO_CONFIRMED | Video booking or on-demand plan | Video interpreter arranged. Ask at the front desk. |
| ESCALATED | No option; coordinator working | Hospital staff are working on your support. You may get a call. |
| IN_SERVICE | Interpreter with patient | Not shown. |
| COMPLETED | Service done | Please tell us how it went. |
| CANCELLED | Visit cancelled | This visit was cancelled. |

Help request wording: submitted = "We received your request." in progress = "The hospital is working on your request." booked = "A visit has been arranged. See your visits." declined = "The hospital could not arrange this request. Please call or visit the front desk." Never use the word booked until the desk links a visit.

Release-blocking test: a cancelled booking never shows as confirmed on any surface.

Staff-facing status names are the constants above rendered in English; Tamil and Hindi entries go in the i18n files.
