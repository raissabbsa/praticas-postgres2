SELECT schools.id,
schools.name AS school,
courses.name AS course,
companies.name AS company,
roles.name AS role
FROM users 
JOIN educations ON educations."userId" = users.id
JOIN schools ON educations."schoolId" = schools.id
JOIN courses ON educations."courseId" = courses.id
JOIN applicants ON applicants."userId" = users.id
JOIN jobs ON applicants."jobId" = jobs.id
JOIN roles ON jobs."roleId" = roles.id
JOIN companies ON jobs."companyId" = companies.id
WHERE companies.id = 10 AND roles.name = 'Software Engineer' AND jobs.active = true;