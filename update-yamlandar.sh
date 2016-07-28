rm -rf wdi-schedule
curl -O https://calendar.google.com/calendar/ical/generalassemb.ly_11ecttiuoidin7hcvigui7cdg4%40group.calendar.google.com/public/basic.ics
git clone git@github.com:ga-dc/wdi-schedule.git -b gh-pages
mv basic.ics wdi-schedule/wdi_cal.ics
cd wdi-schedule
ruby ical.rb > sk.yml
echo '- "start-date": "2016-05-19"' > new.yml
echo "- days:" >> new.yml
cd ../
cat wdi-schedule/new.yml
cat wdi-schedule/new.yml > schedule.yml
cat wdi-schedule/sk.yml >> schedule.yml
yamlandar -c > index.html
rm -rf wdi-schedule 
git add .
git commit -m "update schedule"
git push origin gh-pages