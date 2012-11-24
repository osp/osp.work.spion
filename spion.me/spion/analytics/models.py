from spion.settings import PIWIK_PATH, PIWIK_SITE_ID
from urllib import quote
from urllib2 import  Request, urlopen, URLError
import json

class ApiError(Exception):
    def __init__(self, url, what):
        self.url = url
        self.what = what
    def __str__(self):
        return '(%s) => %s'%(self.url,self.what)

class Visitors():
    def __init__(self, page_url=None):
        self.url = PIWIK_PATH + '?module=API&method=Live.getLastVisitsDetails&idSite=%s&period=day&date=today&format=JSON&token_auth=anonymous' % PIWIK_SITE_ID
        if page_url:
            self.url += "&segment=pageUrl==" + quote(page_url, '')
    
    def get(self):
        req = Request(self.url)
        res = None
        try:
            res = urlopen(req)
            api_dict = json.loads(res.read())
        except URLError, e:
            if hasattr(e, 'reason'):
                raise ApiError(self.url, e.reason)
            elif hasattr(e, 'code'):
                raise ApiError(self.url, e.code)
        
        for index, visit in enumerate(api_dict):
            if 'actionDetails' in visit:
                if len(visit['actionDetails']) > 3:
                    api_dict[index]['actionDetails'] = api_dict[index]['actionDetails'][0:3]
        
        return api_dict
