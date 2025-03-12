select * from death_data;
select count(distinct(country)) from death_data;
SET SQL_SAFE_UPDATES=0;

alter table death_data add column CONTINENT varchar(50) AFTER COUNTRY;

UPDATE DEATH_DATA
SET continent = CASE 
    # Africa
    WHEN COUNTRY IN ('Algeria', 'Angola', 'Benin', 'Botswana', 'Burkina Faso', 'Burundi', 'Cabo Verde', 
                     'Cameroon', 'Central African Republic', 'Chad', 'Comoros', 'Congo', 'Democratic Republic of Congo', 
                     'Djibouti', 'Egypt', 'Equatorial Guinea', 'Eritrea', 'Eswatini', 'Ethiopia', 'Gabon', 
                     'Gambia', 'Ghana', 'Guinea', 'GuineaBissau', 'Ivory Coast', 'Kenya', 'Lesotho', 
                     'Liberia', 'Libya', 'Madagascar', 'Malawi', 'Mali', 'Mauritania', 'Mauritius', 'Morocco', 
                     'Mozambique', 'Namibia', 'Niger', 'Nigeria', 'Rwanda', 'Sao Tome and Principe', 
                     'Senegal', 'Seychelles', 'Sierra Leone', 'Somalia', 'South Africa', 'South Sudan', 'Sudan', 
                     'Tanzania', 'Togo', 'Tunisia', 'Uganda', 'Zambia', 'Zimbabwe') 
    THEN 'Africa'

    # Asia
    WHEN COUNTRY IN ('Afghanistan', 'Armenia', 'Azerbaijan', 'Bahrain', 'Bangladesh', 'Bhutan', 'Brunei', 
                     'Cambodia', 'China', 'Cyprus', 'Georgia', 'India', 'Indonesia', 'Iran', 'Iraq', 'Israel', 
                     'Japan', 'Jordan', 'Kazakhstan', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Lebanon', 'Malaysia', 
                     'Maldives', 'Mongolia', 'Myanmar', 'Nepal', 'North Korea', 'Oman', 'Pakistan', 
                     'Palestine', 'Philippines', 'Qatar', 'Saudi Arabia', 'Singapore', 'South Korea', 
                     'Sri Lanka', 'Syria', 'Taiwan', 'Tajikistan', 'Thailand', 'Timor-Leste', 'Turkey', 
                     'Turkmenistan', 'United Arab Emirates', 'Uzbekistan', 'Vietnam', 'Yemen') 
    THEN 'Asia'

	# Europe
    WHEN COUNTRY IN ('Albania', 'Andorra', 'Austria', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria', 
                     'Croatia', 'Czechia', 'Denmark', 'Estonia', 'Finland', 'France', 'Germany', 'Greece', 
                     'Hungary', 'Iceland', 'Ireland', 'Italy', 'Latvia', 'Lithuania', 'Luxembourg', 'Malta', 
                     'Moldova', 'Monaco', 'Montenegro', 'Netherlands', 'North Macedonia', 'Norway', 'Poland', 
                     'Portugal', 'Romania', 'Russia', 'San Marino', 'Scotland', 'Serbia', 'Slovakia', 'Slovenia', 
                     'Spain', 'Sweden', 'Switzerland', 'Ukraine', 'United Kingdom', 'Wales') 
    THEN 'Europe'

    # North America
    WHEN COUNTRY IN ('Antigua and Barbuda', 'Bahamas', 'Barbados', 'Belize', 'Canada', 'Costa Rica', 'Cuba', 
                     'Dominica', 'Dominican Republic', 'El Salvador', 'Greenland', 'Grenada', 'Guatemala', 
                     'Haiti', 'Honduras', 'Jamaica', 'Mexico', 'Nicaragua', 'Panama', 'Puerto Rico', 
                     'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Vincent and the Grenadines', 'Trinidad and Tobago', 
                     'United States', 'United States Virgin Islands') 
    THEN 'North America'

    # South America
    WHEN COUNTRY IN ('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Guyana', 'Paraguay', 
                     'Peru', 'Suriname', 'Uruguay', 'Venezuela') 
    THEN 'South America'

    # Oceania
    WHEN COUNTRY IN ('Australia', 'Fiji', 'Kiribati', 'Marshall Islands', 'Micronesia', 'Nauru', 'New Zealand', 
                     'Palau', 'Papua New Guinea', 'Samoa', 'Solomon Islands', 'Tonga', 'Tuvalu', 'Vanuatu') 
    THEN 'Oceania'

    -- Assign 'Others' to countries that are not explicitly mentioned
    ELSE 'Others'
END;


SELECT distinct(COUNTRY_CODE),COUNTRY,CONTINENT FROM death_data;
