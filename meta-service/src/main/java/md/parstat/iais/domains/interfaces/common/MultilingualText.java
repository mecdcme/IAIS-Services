package md.parstat.iais.domains.interfaces.common;


import java.util.UUID;

import md.parstat.iais.common.Language;

public interface MultilingualText extends DomainObject {

    String getWord();

    void setWord(String word);

    Language getLanguage();

    void setLanguage(Language language);

    UUID getEntityId();

    void setEntityId(UUID entityId);

}
