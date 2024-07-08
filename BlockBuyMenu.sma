#include <amxmodx>
#include <fakemeta>

#define PLUGIN "Block Buy Menu"
#define VERSION "1.0"
#define AUTHOR "big_biceps"

new g_msgStatusIcon;

public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR);

	g_msgStatusIcon = get_user_msgid("StatusIcon");
	register_message(g_msgStatusIcon, "msgStatusIcon");
}

public msgStatusIcon(msgid, msgdest, id) {
	static szIcon[8];
	get_msg_arg_string(2, szIcon, 7);
	
	if(equal(szIcon, "buyzone") && get_msg_arg_int(1)) {
		set_pdata_int(id, 235, get_pdata_int(id, 235) & ~(1<<0));
		return PLUGIN_HANDLED;
	}
	
	return PLUGIN_CONTINUE;
}
