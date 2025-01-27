import ballerina/io;
import mock_client.mclient as mc;

public function main() returns error? {
    mc:Client mclient = check new(apiKeyConfig = {apikey: ""});
    json jsonResult = check mclient->/catalog/datasets/["123"]();
    io:println(jsonResult);
    // remain logic can be address here
}
