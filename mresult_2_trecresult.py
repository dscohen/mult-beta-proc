num_name = {}
with open ('names') as f:
    for l in f:
        l = l.split(',')
        l[1] = l[1].split('/')[-1]
        l[1] = l[1].split('.')[0]
        num_name[float(l[0])] = l[1][:-1]
with open('python_results') as f:
    trec_results = []
    for line in f:
        print line
        line = line.split(' ')
        q = line[0]
        k = 40.
        for i,r in enumerate(line[1:]):
            trec_results.append(' '.join([q,'0',num_name[float(r)],'1',str(k-i),'bp']))
q = open('bcb_results.eval','w')
q.write('\n'.join(trec_results))
