package tr.org.liderahenk.notify.dialogs;

import java.util.Map;

import org.eclipse.swt.widgets.Composite;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import tr.org.liderahenk.liderconsole.core.dialogs.IProfileDialog;
import tr.org.liderahenk.liderconsole.core.exceptions.ValidationException;
import tr.org.liderahenk.liderconsole.core.model.Profile;

public class NotifyProfileDialog implements IProfileDialog {
	
	private static final Logger logger = LoggerFactory.getLogger(NotifyProfileDialog.class);
	
	@Override
	public void init() {
		// TODO initialize 
	}
	
	@Override
	public void createDialogArea(Composite parent, Profile profile) {
		// TODO create input widgets
	}
	
	@Override
	public Map<String, Object> getProfileData() throws Exception {
		// TODO return profile data collected from the input widgets
		return null;
	}
	
	@Override
	public void validateBeforeSave() throws ValidationException {
		// TODO Auto-generated method stub
		
	}
	
}
