{* DO NOT EDIT THIS FILE! Use an override template instead. *}

<div class="object-{$object_parameters.align}{section show=ne($classification|trim,'')} {$classification|wash}{/section}"{section show=is_set($object_parameters.id)} id="{$object_parameters.id}"{/section}>
{content_view_gui view=$view link_parameters=$link_parameters object_parameters=$object_parameters content_object=$object classification=$classification}
</div>

{*
Set variable to true if the object should be rendered as a block
tag. If it should be rendered as inline use false.
{set-block scope=root variable=is_block}true{/set-block}

*}
