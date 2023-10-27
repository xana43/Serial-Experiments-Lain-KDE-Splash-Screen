/*
 *   Copyright 2014 Marco Martin <mart@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.5
import QtQuick.Window 2.2


AnimatedImage {
    id: root
    source: "images/navi.gif"

    mipmap: true
    
    property int stage
    
    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
            textAnimation.running = true
            preOpacityAnimation.from = 0;
            preOpacityAnimation.to = 1;
            preOpacityAnimation.running = true;
        }
        if (stage == 4) {
            preOpacityAnimation.from = 1;
            preOpacityAnimation.to = 0;
            preOpacityAnimation.running = true;
            pausa.start();
        }
    }

        Text {
            id: mainText
            renderType: Screen.devicePixelRatio % 1 !== 0 ? Text.QtRendering : Text.NativeRendering
            antialiasing: true
            font.pointSize: 24
            color: "#ffffff"
            opacity:0.85
            font { family: "NotoSans MED"; weight: Font.Dark ;capitalization: Font.Capitalize}
            anchors.horizontalCenter: parent.horizontalCenter
            SequentialAnimation {
                id: textAnimation
                running: false
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "P"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Pr"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Pre"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Pres"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Prese"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Presen"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present "
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present D"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Da"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. "
                        duration: 700
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Pr"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Pre"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to:"Present Day. Pres"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Prese"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Presen"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Present "
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Present T"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Present Ti"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Present Tim"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
                PropertyAnimation {
                        property: "text"
                        target: mainText
                        to: "Present Day. Present Time"
                        duration: 500
                        easing.type: Easing.InOutQuad
                }
            }
        }


    SequentialAnimation {
        id: introAnimation
        running: false

        ParallelAnimation {
            PropertyAnimation {
                property: "y"
                target: topRect
                to: ((root.height / 3) * 2) - 170
                duration: 2000
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }
            
        }
    }



}
