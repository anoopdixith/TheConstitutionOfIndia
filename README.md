# TheConstitutionOfIndia
Repository for the Constitution of India. 
PLEASE READ THIS BEFORE CHECKING THE REPOSITORY.

Following a discussion on /r/india, ported the Constitution of India and all of its Amendments onto Git and have hosted on GitHub.

Have used a bunch of scripts (combination of Shell scripts and Python scripts) to do various stuff like downloading the files of the Constitution from its website the first time, creating a ‘bundle’ of files for every release (a ‘bundle’ is considered a ‘release’ and it is after every Amendment. So, we now have a bundle of files after every Amendment. All releases have been git-annotation-tagged.), converting the modified text file to its corresponding pdf format, execute git tasks(this was interesting because the file, commit_chores.sh, was used to test itself - tester’s quine) etc.

HOWEVER, due the lack of consistency in the Amendment Bills about numbering format, ordering, wordings for what needs to be modified, what needs to be removed etc, I could NOT automate that.

So, all the commit messages you see there are mine and only that procedure was MOSTLY MANUAL. I’ve taken enough care and spent quite sometime on each commit message to have proper commit messages and also to include interesting stuff if any and major changes, if not all, about the Amendment.

Also, I’ve used the name of the person who passed that bill as the ‘author’ of the commit. So, you’ll see commits authored by many ministers from Arun Jaitley, LK Advani to AK Sen, Mufti Mohammad Sayeed to Indira Gandhi, Lal Bahadur Shastri all the way back to Jawaharlal Nehru, at the very beginning.

After every Amendment, a ‘bundle’ of files is created. This ‘bundle’ does NOT contain any scripts. It only contains all the PARTS (which contain Articles) and SCHEDULES (which contain Entries) of The Constitution in both pdf and txt formats.

HOW THIS WAS CREATED?

The straight forward approach anybody would prefer would be to take the original version of the Constitution, keep making amendments on it in order and release a bundle after every such amendment. So, you’ll have it as Original->1->2->…98->99. Unfortunately, the original version of the Constitution IN TEXT FORMAT is mostly unreadable and has a lot of garbled text/words/lines in almost every Article as it was converted to text from pdf format which in turn was probably a picture clicked on the actual copy.

Therefore, it was almost impossible to do it bottom-up.

Hence, the other approach, top-down, was considered. Basically, we assumed to have the 99th Amendment applied version on the Government of India website. We also have the webpages for each individual Amendment bill passed. So, reverse-applying these changes from 99 till 01 is a possible way. Turns out the version of the Constitution in the Government of India website as of this writing is post-96th Amendment version.

Thus, 96th Amendment became the original HEAD. On this HEAD, two branches would be created.

One branch followed it all the way till the Original version by reverse applying the changes.

I term these as r-Amendments (for reverse-Amendments) to differentiate them from f-Amendments (for forward Amendments) which are the actual amendments.

Thus, r-Amendment 43 would mean that the changes in the actual, f-Amendment 43 have been reverse applied to bring the post-43rd Amendment version down to post-42nd Amendment version (i.e. 43 to 42). In contrast, an f-Amendment on 43 would take it up to 44.

Very simply,

r-Amendment(x) = x-1;

r-Amendment(1) = Original version (i.e. no-amendments-yet version);

f-Amendment(x) = x+1 (i.e. the actual amendment).

Thus, you’ll see terms like ‘back-modified’, ‘back-inserted’, ‘back-removed’ etc in the comments. They just mean that those changes are part of r-Amendments and thus have been reverted.

For e.g., if we ‘insert' an Article K in the f-Amendment of version X to take it to version X+1, then ‘removal' of the same Article K from X+1 would bring it back to X. This ‘removal’ flow is termed part of r-Amendment.

The second branch is for straight-forward f-Amendments on 96 to bring it to 99. No r-Amendments in this branch.

TAGS

Every release is associated with an annotated git tag.

Every release is comprised of a ‘bundle’ that has files of all Articles/Parts/Schedules (but no supporting scripts) in the form of both pdf and txt.

Tags are of the formate: STABLE_AMENDMENT_XY

That means the files in the ‘bundle’ corresponding to the tag in question were as they were in the Constitution of India between its (XY)th and (XY+1)th Amendments.

Thus, STABLE_AMENDMENT_74 means the files in the ‘bundle’ corresponding to this tag were as they were between 74th and 75th Amendments.

Git repo is at: https://github.com/anoopdixith/TheConstitutionOfIndia

Current working branch which is from 96th up to 99th Amendment is: forward_amendments

Reverse working branch that has all the Amendments from the original version till 96 is: dates

Master branch (unfortunately) was used for all kind of experiments including testing scripts and thus has been rebased over and over again. Not sure if it’s completely usable. I plan to sanitize it.

Overall, I found the whole exercise interesting and also learned various interesting things about our Constitution. A few are listed here: http://sheketimes.blogspot.com/2015/04/interestingamendments.html

PLEASE NOTE THAT FOR ALL THE ONES (AND TO OTHER AMENDMENTS AS WELL) MENTIONED THERE, THE COMMIT MESSAGES INCLUDE EVERY INTERESTING PIECE OF INFO ABOUT THAT AMENDMENT.
