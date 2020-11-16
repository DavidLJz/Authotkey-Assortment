;CTRL+SHIFT+J to search text from popup
$^+j::
InputBox, searchText, Google Search, Please enter text to search for., 60, 240
if !ErrorLevel {
	Run https://www.google.com/search?num=100&hl=en&q=%searchText%
}
return