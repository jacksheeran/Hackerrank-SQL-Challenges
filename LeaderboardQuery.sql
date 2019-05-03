/*Print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

The following tables contain contest data:
  Hackers:     The hacker_id is the id of the hacker, and name is the name of the hacker. 
  Difficulty:  The difficult_level is the level of difficulty of the challenge, and score is the score of the 
               challenge for the difficulty 
  Challenges:  The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the 
               challenge, and difficulty_level is the level of difficulty of the challenge.
  Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the 
               submission, challenge_id is the id of the challenge that the submission belongs to, and score is 
               the score of the submission. 
*/

SELECT h.hacker_id, h.name
FROM hackers h JOIN submissions s
    ON h.hacker_id = s.hacker_id
JOIN challenges c
    ON s.challenge_id = c.challenge_id
JOIN difficulty d
    ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
    HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;
