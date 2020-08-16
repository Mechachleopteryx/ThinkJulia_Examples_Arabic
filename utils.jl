module Utils

export read_youtube

function read_youtube(video_id, end_time::String)
    read_youtube(video_id, "1", end_time)
end

function read_youtube(video_id, start_time::String, end_time::String)
    start_sec, end_sec = parse_time(start_time), parse_time(end_time)
    videoHTML(video_id, start_sec, end_sec)
end

function videoHTML(video_id, start_sec::Integer, end_sec::Integer)
    HTML("""
        <iframe width="560" height="315"
        src="https://www.youtube.com/embed/$video_id?start=$start_sec&end=$end_sec&rel=0&showinfo=0"
        frameborder="0" allowfullscreen>
        </iframe>
    """)
end

function parse_time(str_time)
    parsed_time = map(x -> parse(Int64, x), split(str_time, ":"))
    count_seconds(parsed_time...)
end

count_seconds(s) = s
count_seconds(m, s) = 60m + s
count_seconds(h, m, s) = count_seconds(60h + m, s)
end