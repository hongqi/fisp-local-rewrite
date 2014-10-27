{%$host=$host|default:"you_default_host"%}
{%$uri=$smarty.server["REQUEST_URI"]%}
{%$url=$host|cat:$uri%}

{%$post_string=""%}
{%foreach from=$smarty.post key=key item=val%}
	{%$post_string=$post_string|cat:$key|cat:"="|cat:$val|cat:"&"%}
{%/foreach%}

{%$http = ['method'=>'POST', 'content'=>$post_string]%}
{%$context = ['http'=> $http]%}

{%$content=file_get_contents($url, false, stream_context_create($context))%}
{%$content%}
