
#ifndef mds_repomonitor_h
#define mds_repomonitor_h

#include "mds.h"

class RepoMonitor : public Thread
{
public:
    RepoMonitor() : Thread() {
    }
    /*
     * Update repository information and return thre repoId, otherwise empty 
     * string.
     */
    void updateRepo(const std::string &path) {
        RepoControl repo = RepoControl(path);
        RepoInfo info;

        try {
            repo.open();
        } catch (SystemException &e) {
            WARNING("Failed to open repository %s: %s", path.c_str(), e.what());
            return;
        }

        RWKey::sp key = infoLock.writeLock();
        if (MDS::get()->myInfo.hasRepo(repo.getUUID())) {
            info = MDS::get()->myInfo.getRepo(repo.getUUID());
        } else {
            info = RepoInfo(repo.getUUID(), repo.getPath());
        }
        info.updateHead(repo.getHead());
        MDS::get()->myInfo.updateRepo(repo.getUUID(), info);

        LOG("Checked %s: %s %s", path.c_str(), repo.getHead().c_str(), repo.getUUID().c_str());
        
        repo.close();

        return;
    }
    void run() {
        std::list<std::string> repos = MDS::get()->rc.getRepos();
        std::list<std::string>::iterator it;

        while (!interruptionRequested()) {
            for (it = repos.begin(); it != repos.end(); it++) {
                updateRepo(*it);
            }

            sleep(MDS_MONINTERVAL);
        }

        DLOG("RepoMonitor exited!");
    }
};

#endif
