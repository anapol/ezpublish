{set-block scope=global variable=title}{'Poll %pollname'|i18n('design/standard/content/poll',,hash('%pollname',$node.name))}{/set-block}

<h1>{'Poll results'|i18n( 'design/standard/content/poll' )}</h1>

{section show=$error}

{section show=$error_anonymous_user}
<div class="warning">
    <p>{'Anonymous users are not allowed to vote on this poll, please login.'|i18n('design/standard/content/poll)}</p>
</div>
{/section}

{section show=$error_existing_data}
<div class="warning">
    <p>{'You have already voted for this poll.'|i18n('design/standard/content/poll)}</p>
</div>
{/section}

{/section}

<h2>{$node.name}</h2>

{section loop=$object.contentobject_attributes}
    {section show=$:item.contentclass_attribute.is_information_collector}

        <h3>{$:item.contentclass_attribute.name}</h3>
        {attribute_result_gui view=count attribute=$:item}

    {section-else}

        {section show=$attribute_hide_list|contains($:item.contentclass_attribute.identifier)|not}
            <h3>{$:item.contentclass_attribute.name}</h3>
            {attribute_view_gui attribute=$:item}
        {/section}

    {/section}

{/section}

<br/>

{"%count total votes"|i18n( 'design/standard/content/poll' ,,
                             hash( '%count', fetch( content, collected_info_count, hash( object_id, $object.id ) ) ) )}
