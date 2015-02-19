import QtQuick 2.3
import QtQuick.Controls 1.3
import Pyblish 0.1


StackView {
    id: stack

    initialItem: overview

    Component {
        id: overview

        Overview {
            onPluginDoubleClicked: {
                var itemData = app.pluginData(index)

                stack.push({
                    item: properties,
                    properties: {
                        type: "plugin",
                        currentIndex: index,
                        itemData: itemData
                    }
                })
            }

            onInstanceDoubleClicked: {
                var itemData = app.instanceData(index)

                stack.push({
                    item: properties,
                    properties: {
                        type: "instance",
                        currentIndex: index,
                        itemData: itemData
                    }
                })
            }
        }
    }

    Component {
        id: properties

        Properties {}
    }
}
