{%- if path is not starting_with("http") -%}
    {{ config.extra.web_url | trim_end_matches(pat="/") }}/{{ path | trim_start_matches(pat="/")}}
{%- else -%}
    {{ path }}
{%- endif -%}
