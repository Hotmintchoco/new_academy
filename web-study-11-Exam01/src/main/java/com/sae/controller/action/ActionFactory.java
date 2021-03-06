package com.sae.controller.action;


public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActoinFactory : " + command);
		
		if(command == null) {
			command = "employee_list";
		}
		
		if (command.equals("employee_list")) {
			action = new BoardListAction();
		}else if(command.equals("board_write_form")) {
			action = new BoardFormAction();
		}else if(command.equals("board_write")) {
			action = new BoardWriteAction();
		}else if(command.equals("employee_view")) {
			action = new EmployeeViewAction();
		}else if(command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		}else if(command.equals("board_update")) {
			action = new BoardUpdateAction();
		}else if(command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}
		return action;
	}
}
