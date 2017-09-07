package org.b3log.solo.repository.impl;


import org.b3log.latke.repository.annotation.Repository;
import org.b3log.solo.model.Resource;
import org.b3log.solo.repository.ResourceRepository;
import org.b3log.latke.repository.AbstractRepository;
/**
 * Author:rzx
 * Date:2017/9/6
 */

@Repository
public class ResourceRepositoryImpl extends AbstractRepository  implements ResourceRepository {
    public ResourceRepositoryImpl() {
        super(Resource.RESOURCE);
    }
}


