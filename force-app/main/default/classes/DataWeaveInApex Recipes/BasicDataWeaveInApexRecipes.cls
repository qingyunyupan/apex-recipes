/**
 * @description Demonstrates various ways of invoking a DataWeave scripts
 * in Apex. Note that this class demonstrates both static and dynamic way of
 * invoking DataWeave scripts.For more DataWeave for Apex example
 * head to https://github.com/developerforce/DataWeaveInApex.
 * @group DataWeaveInApex Recipes
 */
public with sharing class BasicDataWeaveInApexRecipes {
    /**
     * @description Demonstrates how to invoke a DataWeave script in Apex
     * using static invocation. The class uses the `/dw/helloWorld.dwl` script to log a message
     * This shows how to invoke the script using the apex class automatically
     * generated by the platform from the DataWeave script. The DataWeave script is deployed as the metadata.
     * @return the result of output from DataWeave script in the string format
     */

    public static String staticInvocation() {
        DataWeave.Script script = new DataWeaveScriptResource.helloWorld();
        DataWeave.Result result = script.execute(new Map<String, Object>());
        return result.getValueAsString();
    }

    /**
     * @description Demonstrates how to invoke a DataWeave script in Apex
     * using dynamic invocation. For dynamic invocation use `DataWeave.Script.createScript`.
     * The class uses the /dw/helloWorld.dwl script to log a message
     * @param scriptName name of the DataWeave metadata to invoke
     * @return the result of output from DataWeave script in the string format
     */
    public static String dynamicInvocation(String scriptName) {
        DataWeave.Script script = DataWeave.Script.createScript(scriptName);
        DataWeave.Result result = script.execute(new Map<String, Object>());
        return result.getValueAsString();
    }
}