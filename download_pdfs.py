import urllib2
import sys

def main():
    url_first_part = "http://lawmin.nic.in/olwing/coi/coi-english/Const.Pock%202Pg.Rom8Fsss("
    url_last_part = ").pdf"
    base_path = "./PART_"
    name_prefix = "PART"
    name_postfix = ".pdf"
    base_url_difference = 3
    
    '''
    for i in range(1,23):
        if i in {5,10,15}:
            base_url_difference+=1
        final_url = url_first_part + str(i+base_url_difference) + url_last_part
        path = base_path + str(i) + "/" + name_prefix + str(i) + name_postfix
        download_file(final_url, path)
    '''

    if len(sys.argv) > 1:
	if len(sys.argv)%2 == 0:
	    print("Command line usage error. Please use script_name.py url1 path1 url2 path2 ...")
	    return
	for i in xrange(1,len(sys.argv),2):
	    url = sys.argv[i]
	    path = sys.argv[i+1]
	    download_file(url, path)
            

def download_file(download_url, path):
    response = urllib2.urlopen(download_url)
    file = open(path, 'wb')
    file.write(response.read())
    file.close()

if __name__ == "__main__":
    main()
