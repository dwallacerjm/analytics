select a.campaign_id, a.email_id, action_date as bounced_date, status as bounce_type
from {{env.schema}}.mailchimp_email_actions a
inner join {{env.schema}}.mailchimp_sent_to b
	on a.campaign_id = b.campaign_id
	and a.email_id = b.email_id
where action = 'bounce'