function dl
  set format $argv[1]
  set rest_args $argv[2..-1]

  switch $format
    case audio a
      _dl_base --format bestaudio --extract-audio $rest_args
    case video v
      _dl_base $rest_args
    case '*'
      _dl_base $argv
  end
end

function _dl_base
  youtube-dl --cookies $XDG_CONFIG_HOME/youtube-dl/cookies.txt --output '%(autonumber)s - %(creator)s - %(title)s.%(ext)s' $argv
end
