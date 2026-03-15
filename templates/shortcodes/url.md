{%- if path is starting_with("/") -%}
    {{ config.base_url | trim_end_matches(pat="/") }}{{ path }}
{%- else -%}
    {{ path }}
{%- endif -%}
