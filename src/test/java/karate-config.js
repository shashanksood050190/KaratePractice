function fn() { 
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env); 
if (!env) { 
env = 'dev'; 
} 
var config = { 
env: env, 
myVarName: 'hello karate', 
baseUrl: 'https://gorest.co.in',
tokenID: '790b96e9eba7ee0cb4da894a8325ecd49df54e3666959246973c3ddd4fcbfab1'
}
if (env == 'dev') { 
// customize 
// e.g. config.foo = 'bar'; 
} else if (env == 'e2e') { 
// customize 
} 
return config; 
}