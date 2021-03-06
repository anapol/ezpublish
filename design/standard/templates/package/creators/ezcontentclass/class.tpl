{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let class_list=fetch( class, list )}
<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash}">

    <form method="post" action={'package/create'|ezurl}>

    {include uri="design:package/create/error.tpl"}

    {include uri="design:package/header.tpl"}

    <p>{'Please choose the content classes you want to be included in the package.'|i18n('design/standard/package')}</p>

    <div class="block">
        <label>{'Class list'|i18n('design/standard/package')}</label>
        <select class="listbox" name="ClassList[]" multiple="multiple">
        {section var=class loop=$class_list}
            <option value="{$class.id}">{$class.item.name|wash}</option>
        {/section}
        </select>
    </div>

    {include uri="design:package/navigator.tpl"}

    </form>

    </div>
</div>
{/let}
