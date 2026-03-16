import QtQuick

    Rectangle {
    required property int in_width
    required property int in_height

    property int in_border_radius

    width: in_width
    height: in_height

    topLeftRadius: in_border_radius
    topRightRadius: in_border_radius
    bottomRightRadius: in_border_radius
    bottomLeftRadius: in_border_radius

    color: "#282828"
}
