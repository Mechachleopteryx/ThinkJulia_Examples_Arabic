module Utils

export videoHTML

function videoHTML(video_id, start_sec, end_sec)
    HTML("""
        <iframe width="560" height="315"
        src="https://www.youtube.com/embed/$video_id?start=$start_sec&end=$end_sec&rel=0&showinfo=0"
        frameborder="0" allowfullscreen>
        </iframe>
    """)
end
end