package org.cc11001100.jfinal.modle;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * Generated by JFinal, do not modify this file.
 * <pre>
 * Example:
 * public void configPlugin(Plugins me) {
 *     ActiveRecordPlugin arp = new ActiveRecordPlugin(...);
 *     _MappingKit.mapping(arp);
 *     me.add(arp);
 * }
 * </pre>
 */
public class _MappingKit {

	public static void mapping(ActiveRecordPlugin arp) {
		arp.addMapping("t_company", "id", Company.class);
		arp.addMapping("t_job", "id", Job.class);
		arp.addMapping("t_msg", "id", Msg.class);
		arp.addMapping("t_resume", "id", Resume.class);
		arp.addMapping("t_resume_deliver", "id", ResumeDeliver.class);
		arp.addMapping("t_user", "id", User.class);
	}
}

