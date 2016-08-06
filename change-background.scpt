tell application "System Events"
     set currentPath to path of container of (path to me)
     set directory to currentPath & "images:"
     set listOfPictures to list folder directory without invisibles

     set hour to time of (current date) div hours
     set i to (hour / 24) * ((count of listOfPictures) + 1) as integer

     set imagePath to directory & item i of listOfPictures

     set desktopCount to count of desktops
     repeat with desktopNumber from 1 to desktopCount
            tell desktop desktopNumber
                 set picture to imagePath
            end tell
     end repeat
end tell

