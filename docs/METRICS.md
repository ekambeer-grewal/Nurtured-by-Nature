[View our Google Slides presentation](https://docs.google.com/presentation/d/1IZ7eArcz96qkg-lbxv5-08maxPHrclpCjIweIs7bzCc/edit?usp=sharing)
<img width="745" height="555" alt="image" src="https://github.com/user-attachments/assets/2b7ab082-a664-4d58-9b0a-2ad1a73f7d87" />

##  Metric Data Collection Details

**NPS (Happiness)**  
- Will be added later to the post-check-in survey screen.  
- When a user rates their mood (1–10), a `nps_submitted` event will log the score to Firebase Analytics.  
- Stored as a custom event with parameter `score`.

---
**Adoption**  
- Automatically tracked via Firebase Authentication.  
- Uses built-in `sign_up`, `login`, and `first_open` events.  
- No additional setup required in FlutterFlow.

---

**Engagement – CTR for Golden Path**  
- The Daily Task arrow on the Home (Golden) Page triggers a custom event `daily_task_open_button`.  
- Optional parameter: `session_type = "daily_task"`.  
- Measures how many users begin the main calming activity through their Daily Task.

---
