<img width="1919" height="903" alt="image" src="https://github.com/user-attachments/assets/115612fd-c4eb-4d1a-91b6-48a4f548fc62" /># React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some Oxlint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Oxc](https://oxc.rs)
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/)

## React Compiler

The React Compiler is not enabled on this template because of its impact on dev & build performances. To add it, see [this documentation](https://react.dev/learn/react-compiler/installation).

## Expanding the Oxlint configuration

If you are developing a production application, we recommend using TypeScript with type-aware lint rules enabled. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for information on how to integrate TypeScript and Oxlint's TypeScript related rules in your project.


## link to access 
remarkable-parfait-3d6624.netlify.app

Community Hero

Report it once. Watch it get fixed.

Community Hero is a hyperlocal civic issue reporting platform that lets citizens identify, report, verify, track, and resolve community problems — potholes, broken streetlights, water leakage, garbage, and more — through AI-powered automation and community collaboration.


The Problem

Reporting a civic issue today is fragmented and opaque. Citizens report potholes or broken streetlights through phone calls, emails, or scattered municipal forms — and then hear nothing back. There's no visibility into whether anything is happening, no way for neighbors to confirm an issue is real, and no transparency into resolution.

The Solution

Community Hero closes that loop. A citizen reports an issue with a photo or short video; AI automatically classifies and describes it; the issue appears live on a public map; neighbors verify it through upvotes; status updates flow in real time; and an impact dashboard shows the bigger picture across the community.


Features

Image and video-based reporting — Citizens submit a photo or short video clip along with their live GPS location, captured directly through the browser.

AI-powered issue categorization — Every submission is analyzed using the Gemini API (via Google AI Studio) to automatically classify the issue (pothole, streetlight, water leakage, garbage, other) and generate a description, with a graceful manual fallback if the AI call fails.

Geo-location and mapping — An interactive Leaflet map (OpenStreetMap tiles) plots every reported issue as a color-coded pin by category.

Community verification — Neighbors upvote issues they can confirm. At 3+ upvotes, an issue automatically transitions to "verified" status, and the original reporter is awarded points.

Real-time issue tracking — Powered by Supabase Realtime, the map and case feed update live across all connected users the moment an issue is added, upvoted, or its status changes — no page refresh required.

Impact dashboard — A metrics view showing total case volume, open vs. resolved counts, and a category breakdown chart.

Predictive insights (trend signal) — A lightweight, honestly-labeled trend analysis comparing report volume per category over the last 7 days against the prior 7 days, surfacing which issue types are accelerating in the community. This is a historical density signal, not a trained forecasting model.

Gamification — Reporters earn points for filing reports (+2) and getting issues verified (+5), progressing through three tiers — Scout, Guardian, and Hero — visualized with the platform's signature stamped-seal badge design.


Design

Community Hero uses a custom "Civic Docket Registry" visual identity — an institutional, premium aesthetic built around the idea of an official municipal record: Fraunces serif headlines, IBM Plex Sans body text, IBM Plex Mono for case IDs and coordinates, and a hand-stamped rubber-seal badge component (built with SVG turbulence/displacement filters for a textured, authentic look) that marks every issue's status.


Tech Stack

LayerTechnologyFrontendReact + ViteAIGoogle Gemini API (via Google AI Studio) — multimodal image classificationBackend / Database / StorageSupabase (Postgres, Realtime, Storage)MappingLeaflet + OpenStreetMapDevelopmentBuilt with Google Antigravity


How It Works


A citizen opens the report form, captures their location, and attaches a photo or video of the issue.
The media is uploaded to Supabase Storage, and a frame (for video) or the image directly is sent to the Gemini API for classification.
The issue is committed to the registry with its AI-assigned category, description, coordinates, and a "reported" status.
The issue appears instantly on the live map and case feed for all users, via Supabase Realtime.
Other citizens can view and upvote the issue. Three or more confirmations automatically verify it and award points to the original reporter.
Municipal status can be manually progressed (in progress / resolved / flagged) to simulate the resolution lifecycle.
The dashboard aggregates all activity into category breakdowns, open/resolved counts, and trending signals.



Running Locally

bashnpm install

Create a .env file in the project root with:

SUPABASE_URL=your_supabase_project_url
SUPABASE_ANON_KEY=your_supabase_anon_key
GEMINI_API_KEY=your_gemini_api_key_from_google_ai_studio

bashnpm run dev

The app will run in Local Simulation Mode (using browser storage) if Supabase credentials are not configured, allowing the UI to be explored without a live backend.


Roadmap

Beyond this MVP, Community Hero's next iteration could include: AI-based severity and authenticity scoring at the point of submission, voice-activated reporting for accessibility, multilingual support, and direct integration with municipal department workflows for automated case routing.

<img width="1919" height="901" alt="Screenshot 2026-07-05 185402" src="https://github.com/user-attachments/assets/a2576ea5-6ed9-4f75-b4f0-5e3e750b46c3" />

<img width="1919" height="898" alt="Screenshot 2026-07-05 185426" src="https://github.com/user-attachments/assets/ba31582c-bfcd-48f9-aef0-9e1db84999e3" />


<img width="1919" height="903" alt="image" src="https://github.com/user-attachments/assets/2012ef59-355e-4aef-b71f-4a8492eb649d" />
