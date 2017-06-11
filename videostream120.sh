v4l2-ctl --set-fmt-video=width=160,height=120,pixelformat=5

cvlc    --no-audio \
        v4l2:///dev/video0 \
        --v4l2-width 160 \
        --v4l2-height 120 \
        --v4l2-chroma MJPG \
        --v4l2-hflip 1 \
        --v4l2-vflip 1 \
        --sout '#standard{access=http{mime=multipart/x-mixed-replace;boundary=--7b3cc56e5f51db803f790dad720ed50a},mux=mpjpeg,dst=:8080/}' \
        -I dummy vlc://quit 
        