package com.jade.pojo;

public class EleSkill {
    private String skillId;

    private String skillName;

    private String skillNote;

    public String getSkillId() {
        return skillId;
    }

    public void setSkillId(String skillId) {
        this.skillId = skillId == null ? null : skillId.trim();
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName == null ? null : skillName.trim();
    }

    public String getSkillNote() {
        return skillNote;
    }

    public void setSkillNote(String skillNote) {
        this.skillNote = skillNote == null ? null : skillNote.trim();
    }
}