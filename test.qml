import QtQuick 2.13
import QtQuick.Controls 2.13
import QtMultimedia 5.13

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "HelloApp"

    // Text {
    //     anchors.centerIn: parent
    //     text: "Hello World"
    //     font.pixelSize: 24
    // }

    Video {
      id: video
      width : 800
      height : 600
      source: "E:\\A10_manual\\manual_scripts\\Dimmo\\fanbox\\Sayu Secret Mission - Fanbox 4K\\Sayu Secret Mission - Fanbox 1080p.mp4"

      MouseArea {
          anchors.fill: parent
          onClicked: {
              video.play()
          }
      }

      focus: true
      Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
      Keys.onLeftPressed: video.seek(video.position - 5000)
      Keys.onRightPressed: video.seek(video.position + 5000)
    }
}
