
#ifndef mds_repoinfo_h
#define mds_repoinfo_h

#include <boost/archive/xml_iarchive.hpp>
#include <boost/archive/xml_oarchive.hpp>
#include <boost/serialization/string.hpp>
#include <boost/serialization/map.hpp>

class RepoInfo {
public:
	friend class boost::serialization::access;
	template<class Archive>
	void serialize(Archive & ar, const unsigned int version)
	{
		ar & BOOST_SERIALIZATION_NVP(repoId);
		ar & BOOST_SERIALIZATION_NVP(head);
		ar & BOOST_SERIALIZATION_NVP(path);
	}
    RepoInfo() {
    }
    RepoInfo(const std::string &repoId, const std::string &path) {
        this->repoId = repoId;
        this->path = path;
    }
    ~RepoInfo() {
    }
    std::string getRepoId() {
        return repoId;
    }
    void updateHead(const std::string &head) {
        this->head = head;
    }
    std::string getHead() {
        return head;
    }
    std::string getPath() {
        return path;
    }
    void getKV(const KVSerializer &kv, const std::string &prefix) {
        repoId = kv.getStr(prefix + ".id");
        head = kv.getStr(prefix + ".head");
        path = kv.getStr(prefix + ".path");
    }
    void putKV(KVSerializer &kv, const std::string &prefix) const {
        kv.putStr(prefix + ".id", repoId);
        kv.putStr(prefix + ".head", head);
        kv.putStr(prefix + ".path", path);
    }
private:
    std::string repoId;
    std::string head;
    std::string path;
};

#endif

