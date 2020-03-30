# export_slack_emojis
Ruby script to parse json from slack emoji list

1. Go to https://your-slack.slack.com/customize/emoji
2. Open up developer tools then the network tab.
3. Filter by XHR or just search for `emoji.adminList`.
4. Copy and paste into a file called `emoji#{number}.json` with `#{number}` being the file number.
5. Keep scrolling down and keep copying and pasting and creating files.
6. Download the script into the same directory
7. Run script like this: `ruby download_emojis.rb NUMBER_OF_FILES_CREATED` Note: `NUMBER_OF_FILES_CREATED` should be replaced with however many files you created. It defaults to 10.
8. The files will be created in an `emojis` folder with the name of the emoji as the file name.
