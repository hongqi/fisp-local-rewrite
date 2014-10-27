{%$host=$host|default:"you_defult_host"%}
{%$uri=$smarty.server["REQUEST_URI"]%}
{%$url=$host|cat:$uri%}
{%$content=file_get_contents($url)%}
{%$content%}
