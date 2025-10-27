# AB Testing

Kadden Grant - 
Onboarding Flow: Step-by-Step vs. Single-Screen Overview
US4 – User Onboarding Experience

Happiness: User satisfaction score after onboarding (via in-app feedback prompt).
Engagement: Time spent completing onboarding.
Adoption: Percentage of users who finish onboarding and proceed to the main app dashboard.
Retention: Percentage of users who return within 3 days after first login.
Task Success: Completion rate of onboarding steps.
 
What problem are we trying to solve?
New users are dropping off before completing the onboarding process. Analytics show that many users exit after the first or second onboarding screen, suggesting that the multi step design feels long or repetitive. This prevents them from reaching the main app experience, which delays or completely stops engagement with key features.

Hypothesis
If the onboarding process is redesigned into a single, scrollable page that summarizes all setup steps (instead of multiple separate screens), users will find it easier and faster to complete, leading to:
Higher onboarding completion rates, Increased first-session engagement, Improved short-term retention.

Experiment Setup (Using Firebase):
Audience: 50% of new users (randomly assigned).
Experiment Allocation:
Group A (Control): Default multi-step onboarding flow (current design).
Group B (Variant): Single-screen scrollable onboarding showing all steps in one page.

Variations:
### Variation A (Control): Multi-Step Flow
4 separate screens: Welcome → Permissions → Personalization → Confirmation
“Next” button at the bottom of each screen
Progress bar showing step number

### Variation B (Test): Single-Screen Overview
All steps condensed into one scrollable screen
Each section collapsible/expandable for clarity
“Start Using App” button at the bottom


----
Brandon Cordon

## A/B Test Name: 5-Day Nature Challenge — Streak Feature Implementation

User Story US6 — Additional Features

Metrics:
Happiness  – Through quick post-challenge check-ins (e.g., “How do you feel after your walk?” smiley scale).
Adoption – Percentage of users who start the challenge after seeing the prompt.
Engagement – Completion rate of daily challenge activities (e.g., walking, mindful breaks).
Retention – Track how many users return daily during the challenge period.
Task Sucess - Completion of task shows up as a medal for the user

Hypothesis:
Introducing a 5-day nature challenge with a simple streak mechanic (progress bar, badges, and daily reminders) will increase user retention and encourage consistent engagement with the app. Users who receive structured challenges with visible progress are more likely to return each day to maintain their streak.

What problem are we trying to solve? Its impact?
Users may open the app once or twice but drop off after the first few sessions, indicating low retention. For a wellness-based app, daily engagement is crucial to forming positive habits. We’ve identified a bottleneck in the user journey: after completing their first few tasks, there’s no clear incentive to return the next day. Users don’t have a sense of continuity or achievement over time.

By implementing a short-term streak challenge, we give users:

A small, attainable goal (5 days)

A sense of progress and accomplishment through streak visuals

Motivational reminders to stay engaged

We expect this will reduce drop-offs and build a consistent usage pattern.

Experiment - Detail out the experiment setup that you will use to test your hypothesis using Firebase capabilities.
Audience:

50% of active users (randomized) will receive the “Nature Challenge” feature.

50% (control group) will use the standard app without streaks.

Both new and returning users are eligible.

Tracking & Analytics (Firebase):

challenge_started — logs when user opts in to the 5-day challenge.

challenge_day_completed — logs completion of each daily activity.

streak_broken — logs when a user fails to complete a daily task.

challenge_completed — logs when all 5 days are completed.

app_open_daily — for DAU tracking during the challenge.

retention_day_1, retention_day_3, retention_day_5 — track return rates.

Rationale:
5-day streaks are short enough to be approachable but long enough to test habit behavior. A randomized 50/50 split allows us to see clear differences in engagement and retention between the two groups.

### Variations:

#### Variation A (Control):
No streak or challenge functionality.
Users interact with their to-do list and nature features as usual.
No reminder notifications tied to streak behavior.

#### Variation B (Variant):
UI Elements:
A banner on the home screen inviting users to join the “5-Day Nature Challenge.”
A progress bar or streak counter (e.g., 🌿 Day 1/5 completed).
A small badge that unlocks at completion.

Behavior:
Push notifications or gentle reminders if the user hasn’t completed the challenge task for the day.
Motivational message after each completed day.
----
**Andres Henao –**  
**Login Color: Forest Green vs. Earth Brown**  
**US2 – User Login & Authentication**

**Happiness:** Post-login satisfaction score (via in-app prompt).  
**Engagement:** Time spent on the login screen.  
**Adoption:** Percentage of users who successfully log in and reach the dashboard.  
**Retention:** Percentage of users who return within 7 days after first login.  
**Task Success:** Percentage of login attempts completed without error.  

---

### **What problem are we trying to solve?**
Some users enter their credentials but fail to complete the login process. The current green “Login” button blends with the green background, making it less noticeable and potentially reducing click-through rates. This visual similarity may be causing users to overlook the CTA, resulting in slower interactions and lower completion rates.

---

### **Hypothesis**
If we change the “Login” button to a **contrasting earth brown color** that stands out against the background, users will notice it more quickly and interact with it faster, leading to:  
- Higher click-through and login completion rates  
- Shorter time spent on the login screen  
- Equal or improved user satisfaction  

---

### **Experiment Setup (Using Firebase)**
**Audience:** 50% of new users (randomly assigned)  
**Experiment Allocation:**  
- **Group A (Control):** Current **Forest Green** button (`#2E7D32`), white text  
- **Group B (Variant):** **Earth Brown** button (`#6D4C41`), white text, matching header accent  

**Remote Config Parameter:** `login_color = green | brown`  

---

### **Variations**

**Variation A : Forest Green **  
- Solid button color: forest green 
- White “Login” text  
- Positioned below “Forgot Password?” link  

**Variation B (Test):  Brown**  
- Solid button color: brown 
- White “Login” text  
- Same placement and size (color is the only change)  


---

Ekambeer Grewal -

## A/B Test Name:
Login/Sign Up: Separate Pages vs. Tab Switch (1 Page Design)

US1, US2 – Account Creation and Login

## Metrics (HEART Framework):
Happiness: User satisfaction and perceived ease of navigation (via post-task survey or feedback prompt).
Engagement: Number of successful logins and signups completed per session.
Adoption: Percentage of new users who successfully create an account after visiting the login screen.
Retention: Number of returning users who log in again after initial signup.
Task Success: Average time to complete login/signup process

## Hypothesis:
Merging the login and signup screens into a single page with tab-based navigation will streamline the user experience by removing the need to switch between separate pages or wait for reloads. This smoother flow is expected to reduce page loading time, boost the number of successful logins and signups, and enhance both adoption and task completion rates.

## What Problem Are We Trying to Solve?
Currently, users must navigate between two separate pages—one for login and another for signup. This separation can create unnecessary friction, especially on mobile devices, where additional page loads may slow down the process or interrupt the user’s flow. We suspect that combining both actions into a single, streamlined interface could make the experience more intuitive and efficient.
The problem impacts adoption and engagement—potential new users abandon the process before signing up, and returning users may take longer to log in.
By streamlining both flows into a single screen, we aim to minimize drop-offs and speed up the user journey, improving overall satisfaction and conversion rates.

## Experiment:
# Platform: Firebase A/B Testing
# Audience:
50% of new and returning users see the current version (two separate pages).
50% see the new version (single page with tab switch).
# Rationale: A 50/50 split provides an even comparison while maintaining sufficient data volume for statistical significance.
Tracking Setup (Firebase Analytics):
# Event: screen_view for “login_page” and “signup_page”
# Event: tab_switch for users toggling between tabs in the new version
# Event: account_created
# Event: login_success
# Event: drop_off (if user exits before completing form)
# Event: Time metrics for “average time to complete login/signup”
These events will measure task success and adoption, helping determine which variation performs better.

### Variations:
## Variation A – Current Design (Control):
Separate pages for Login and Signup.
Users must navigate between two distinct routes (e.g., /login and /signup).
## Variation B – New Design (Experiment):
Single page with tab-based navigation to toggle between Login and Signup forms.
Both forms load instantly, no page refresh.
Clear UI tabs labeled “Login” and “Sign Up” for seamless switching.

---
