require 'redmine_custom_fields_groups'

Redmine::Plugin.register :redmine_custom_fields_groups do
  name 'Redmine Custom Fields Groups plugin'
  author 'Georepublic'
  author_url 'https://github.com/georepublic'
  url 'https://github.com/gtt-project/redmine_custom_fields_groups'
  description 'This is a plugin for grouping custom fields'
  version '1.0.0'

  requires_redmine :version_or_higher => '4.1.0'

  settings partial: 'settings/redmine_custom_fields_groups',
    default: {
      'custom_fields_group_tag' => 'h4',
      'fieldset_default_state' => 'all_expended'
    }

  menu :admin_menu,
    :custom_fields_group,
    { controller: 'custom_fields_groups', action: 'index' },
    caption: :label_custom_fields_group_plural,
    after: :custom_fields,
    html: { class: 'icon icon-custom-fields custom-fields-groups' }
end
