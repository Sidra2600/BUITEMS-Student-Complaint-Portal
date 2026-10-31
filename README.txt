BUITEMS CAMPUS CARE

QUICK DEMO (no installation or email)
1. Keep index.html, style.css, validation.js, api.js and dashboard.js in one folder.
2. Double-click index.html in Chrome or Edge.
3. Choose Student, Staff or Admin, then click Try demo.
4. Demo data stays in this browser. This is not a secure shared database.

PRESENTATION WALKTHROUGH
Student: Submit a complaint with 1–3 photos. Copy the ticket number.
Switch role > Admin: Open that ticket. Choose expert + priority. Assign.
Switch role > Staff: Select the assigned expert in the demo identity dropdown.
Open the ticket, enter a resolution comment and click Mark resolved.
Switch role > Student: Open ticket. Like closes it; Unlike reopens/escalates it.
A second sample ticket is already resolved so feedback can be demonstrated immediately.
Maximum two new complaints per student per day. Seed tickets are from yesterday.
Refresh preserves saved demo data. Different browsers/devices do not share demo changes.

REAL DATABASE MODE — XAMPP (PHP 8+, MySQL/MariaDB)
1. Copy this entire folder to C:\xampp\htdocs\buitems-portal.
2. Start Apache and MySQL in XAMPP.
3. Open http://localhost/phpmyadmin and import schema.sql.
4. Edit config.php only if your database credentials differ from XAMPP defaults.
5. Open a terminal in this folder and run:
   C:\xampp\php\php.exe setup.php admin@example.test YourOwnStrongPassword
   This creates the first admin only. Use your own password; the example is not pre-created.
6. Open http://localhost/buitems-portal/index.html.
7. Select Admin and sign in using step 5 credentials.
8. Add staff through User management. Students can create accounts from the login screen.
9. All database accounts use real PHP sessions and password hashing. No email verification.
No official email required. Roll numbers/emails are checked for duplicates, but university
student identity is NOT verified against a university registry.

FILES / TEAM RESPONSIBILITIES
UI: index.html (shell) + style.css (responsive blue/gold visual design).
Frontend logic: dashboard.js (screen templates and interactions), validation.js,
api.js (demo storage and PHP API adapter).
Backend handoff: api.php, config.php, setup.php, schema.sql.
The project uses one HTML entry point with distinct role screens, not five duplicated pages.
Official BUITEMS logo downloaded from https://www.buitms.edu.pk/Content/img/logo101.png.
This remains a student project; university branding does not imply endorsement.

FUNCTIONS
Role selection; masked password/show control; student registration; demo role switching;
photo validation and 3 previews; complaint IDs; location and incident time; daily limit;
individual staff assignments; priority; staff-only ticket access; work comments; resolution;
Like/Unlike closure/reopening; activity updates; category add/rename/remove;
user add/edit/remove; search/filter; admin totals/category charts/resolution average/CSV.
48-hour escalation is evaluated whenever data is fetched (not a background email job).
Database daily limit uses UTC; demo uses the device's local calendar day.
Photo evidence is compressed to JPEG in browser and stored with the ticket. Server checks
image bytes and size. There is no external photo service required.
Student receives in-app status/history. Real email sending is not configured.
Demo seed tickets have no real evidence photos, and are explicitly identified as samples.

TESTING / LIMITATIONS
JavaScript syntax and demo workflow tested in this build; see TEST-RESULTS.txt.
PHP/MySQL runtime is not available in the build environment. Database mode is supplied
for XAMPP integration and needs local execution/testing before claiming it is production-ready.
Not an official university portal. No promise of zero errors or production security audit.
No libraries, npm, CDN, paid API or ZIP extraction required to run the demo.

ROMAN URDU
Demo ke liye index.html kholo, role select karo aur Try demo dabao.
Email/password ki zaroorat nahi. Files ka naam aur ek folder mein placement same rakho.
Database ke liye XAMPP steps follow karo. Demo aur database ka data alag hai.

DIRECTORY UPDATE (24 October 2026)
All 32 academic entries from the official faculty directory are available under grouped
department/category options. Fashion & Textile Design is listed there as a programme.
Existing campus service categories are retained for repair complaints.
Five location entries: Takatu, City, Chiltan (research), Muslim Bagh, Zhob.
Campus choice records incident location; it does not assert every degree is taught there.
Keep directory.js and buitems-logo.png in the same folder as index.html.
Existing XAMPP databases: import update-directory.sql once in phpMyAdmin.
Old tickets without campus retain their original location and show campus not specified.
Sources: https://www.buitms.edu.pk/faculty/ ; https://www.buitms.edu.pk/Contacts ;
https://www.buitms.edu.pk/Aboutus ; https://www.buitms.edu.pk/Documents/20Years.pdf

DASHBOARD & PHOTO UPDATE — 25 October 2026
Demo dashboards now include three direct choices: Student, Staff, Admin.
Authenticated database mode keeps role-based access; it does not permit role switching.
Photo evidence has three independent slots, each with preview and remove controls.
Attach 1 to 3 images. Removing one photo preserves the other slots.
Pending uploads block submission; clearing the form clears all three photos.
