package com.sageone.palitel;
import com.experitest.client.*;
import org.junit.*;
/**
 *
*/
public class TestOTron {
    private String host = "10.203.23.62";
    private int port = 8889;
    private String projectBaseDirectory = "/Users/Shared/Jenkins/palitel";
    protected Client client = null;

    @Before
    public void setUp(){
        client = new Client(host, port, true);
        client.setProjectBaseDirectory(projectBaseDirectory);
        client.setReporter("xml", System.getProperty("user.dir") + "/reports");
        //client.setReporter("xml", "reports", "TestOTron");
    }

    @Test
    public void testtest_o_tron(){
        client.setDevice("ios_app:Wilkinson, Neil’s iPhone");
        client.launch("com.sage.Continuous-Integration-Test", true, true);
        client.verifyElementFound("NATIVE", "accessibilityLabel=First", 0);
        client.verifyElementFound("NATIVE", "text=Bacon ipsum dolor amet tenderloin ball tip capicola, kielbasa sirloin sausage turkey frankfurter flank ground round. Ham capicola frankfurter, fatback cow shankle shank. Ball tip boudin flank jowl swine, kevin picanha ground round alcatra pastrami t-bone. Ball tip shoulder pancetta salami meatball kielbasa chuck shank pork belly ground round picanha strip steak.", 0);
        if(client.waitForElement("NATIVE", "text=First", 0, 10000)){
            // If statement
        }
        client.verifyElementFound("NATIVE", "text=Bacon ipsum dolor amet tenderloin ball tip capicola, kielbasa sirloin sausage turkey frankfurter flank ground round. Ham capicola frankfurter, fatback cow shankle shank. Ball tip boudin flank jowl swine, kevin picanha ground round alcatra pastrami t-bone. Ball tip shoulder pancetta salami meatball kielbasa chuck shank pork belly ground round picanha strip steak.", 0);
        if(client.waitForElement("NATIVE", "text=Third", 0, 10000)){
            // If statement
        }
        client.verifyElementFound("NATIVE", "text=First", 0);
        if(client.waitForElement("NATIVE", "partial_text=First", 0, 120000)){
            // If statement
        }
        client.click("NATIVE", "text=First", 0, 1);
        if(client.waitForElement("NATIVE", "partial_text=Back", 0, 60000)){
            // If statement
        }
        client.click("NATIVE", "text=Back", 0, 1);
    }

    @After
    public void tearDown(){
        // Generates a report of the test case.
        // For more information - http://experitest.com/studio/help2/WebHelp/help.htm#Report_Of_Executed_Script.htm .
        client.generateReport(true);
        // Releases the client so that other clients can approach the agent in the near future. 
        client.releaseClient();
    }
}

