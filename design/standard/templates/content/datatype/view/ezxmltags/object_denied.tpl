{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let object_align='right'}
    {switch match=$object_parameters.align}
        {case match='left'}
            {set object_align='left'}
        {/case}
        {case match='right'}
            {set object_align='right'}
        {/case}
        {case match='center'}
            {set object_align='center'}
        {/case}
        {case/}
    {/switch}

    <div class="object-{$object_align}{section show=ne($classification|trim,'')} {$classification|wash}{/section}">
        {$object.name|wash} - {"You do not have sufficient permissions to view this object"|i18n( 'design/admin/node/view/embed'  )}.
    </div>

{/let}

{*
Set variable to true if the object should be rendered as a block
tag. If it should be rendered as inline use false.
{set-block scope=root variable=is_block}true{/set-block}

*}