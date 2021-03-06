package ElectricPower.Util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class MessageUtil {
	
	public Map<String, String> getMessage(String message){
		Map<String, String> result = new HashMap<>();
	if(message.equals("update_success")) {
		result.put("message", "Update_success");
		result.put("alert", "success");
	} else if (message.equals("insert_success")) {
		result.put("message", "Insert_success");
		result.put("alert", "success");
	} else if (message.equals("delete_success")) {
		result.put("message", "delete_success");
		result.put("alert", "success");
	} else if(message.equals("error_system")) {
		result.put("message", "Erro system");
		result.put("alert" , "danger");
	}
		return result;
	}
}
