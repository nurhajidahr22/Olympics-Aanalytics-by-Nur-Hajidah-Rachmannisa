SELECT athlete,
  sport,
  COUNT(medal) medals,
  STRING_AGG(edition, ', ' ) followed_edition
FROM portfolio-431701.Olimpiade.Event_Result_Cleaned R
WHERE country_noc = "INA"
GROUP BY 1,2
ORDER BY 3 DESC