SELECT cf_id,
	(campaign.backers_count)
FROM campaign
WHERE campaign.outcome = 'live'
ORDER BY campaign.backers_count Desc;

SELECT cf_id,
	COUNT(backer_id) AS "backers_count"
FROM backers
GROUP BY cf_id
ORDER BY "backers_count" Desc;

SELECT contacts.first_name,
	contacts.last_name,
	contacts.email,
	(campaign.goal-campaign.pledged) AS remaining_amount
INTO email_contacts_remaining_goal_amount
FROM contacts 
INNER JOIN campaign
ON contacts.contact_id = campaign.contact_id
WHERE campaign.outcome = 'live'
ORDER BY remaining_amount DESC;

SELECT * FROM email_contacts_remaining_goal_amount

SELECT BK.email,
       BK.first_name, 
       BK.last_name, 
       BK.cf_id, 
       CP.company_name,
       CP.description,
       CP.end_date,
       (CP.goal-CP.pledged) as "Left of Goal",
	   CP.outcome
INTO email_backers_remaining_goal_amount
FROM campaign as CP
LEFT JOIN backers as BK
ON CP.cf_id = BK.cf_id
WHERE CP.outcome = 'live'
GROUP BY BK.email,
       BK.first_name, 
       BK.last_name,
       BK.cf_id, 
       CP.company_name,
       CP.description,
       CP.end_date,
       "Left of Goal",
	   CP.outcome
ORDER BY BK.last_name;

SELECT * FROM email_backers_remaining_goal_amount

