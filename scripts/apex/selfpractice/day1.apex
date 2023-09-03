string s = 'APEX is easy for me.';
string t = s.toLowerCase().capitalize();
system.debug(t);

String a = 'Teach more learn More';
string b = a.split(' ')[2] +' '+ a.split(' ')[3];
system.debug(b);

string o = 'ali can cannot code like me';
string l = o.split(' ')[0].toUpperCase()+' '+ o.split(' ')[4].capitalize();
system.debug(l);

string k = 'kate mimoza ali';
string m = k.split(' ')[0].toUpperCase();
system.debug(m);

string d = 'Ali Can';
integer c = d.length();
system.debug(c);