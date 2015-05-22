
var target = UIATarget.localTarget();

function testDetailView(title) {
    UIALogger.logStart(title);
    target.frontMostApp().mainWindow().tableViews()[0].cells()[title].tap();
    var textValue = target.frontMostApp().mainWindow().staticTexts()[title]
    UIALogger.logDebug(textValue);
    if (target.frontMostApp().mainWindow().staticTexts()[title].isValid())
    {
        UIALogger.logPass(title + " pass");
    }
    else
    {
        UIALogger.logFail(title + " fail");
    }
    target.frontMostApp().navigationBar().leftButton().tap();
}


testDetailView("First");
testDetailView("Second");
testDetailView("Third");