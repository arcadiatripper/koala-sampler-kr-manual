require 'fileutils'

def remove_generated_documentation_collections(root_directory)
  FileUtils.rm_rf(File.join(root_directory, '_mobile'))
  FileUtils.rm_rf(File.join(root_directory, '_tablet'))
end

def duplicate_documentation_files(root_directory)
  source_directory = '_documentation'
  destination_directory_mobile = '_mobile'
  destination_directory_tablet = '_tablet'

  files_to_duplicate = Dir.glob(File.join(root_directory, source_directory, '**/*.*'))

  files_to_duplicate.each do |file|
    relative_path = file.sub(%r{^#{Regexp.escape(File.join(root_directory, source_directory))}/}, '')
    mobile_path = File.join(root_directory, destination_directory_mobile, relative_path)
    tablet_path = File.join(root_directory, destination_directory_tablet, relative_path)

    if File.file?(file)
      FileUtils.mkdir_p(File.dirname(mobile_path))
      FileUtils.mkdir_p(File.dirname(tablet_path))
      FileUtils.cp(file, mobile_path)
      FileUtils.cp(file, tablet_path)

    else
      FileUtils.mkdir_p(mobile_path)
      FileUtils.mkdir_p(tablet_path)
    end
  end
end

def rebuild_generated_documentation_collections(site)
  duplicate_documentation_files(site.source)

  %w[mobile tablet].each do |collection_name|
    collection = site.collections[collection_name]
    next unless collection

    collection.docs.clear
    %i[@entries @filtered_entries @entry_filter].each do |ivar|
      collection.remove_instance_variable(ivar) if collection.instance_variable_defined?(ivar)
    end
    collection.read
    collection.docs.each do |document|
      document.data['regenerate'] = true
      site.regenerator.force(document.path)
    end
  end

  site.reader.sort_files!
  %i[@documents @docs_to_write].each do |ivar|
    site.remove_instance_variable(ivar) if site.instance_variable_defined?(ivar)
  end
end

class DuplicateDocumentationGenerator < Jekyll::Generator
  safe true
  priority :highest

  def generate(site)
    rebuild_generated_documentation_collections(site)
  end
end

Jekyll::Hooks.register :site, :post_write do |site|
  root_directory = site.source
  mobile_template_parts_dir = File.join(site.dest, 'mobile', 'chapters')
  tablet_template_parts_dir = File.join(site.dest, 'tablet', 'chapters')

  remove_generated_documentation_collections(root_directory)
  FileUtils.rm_rf(mobile_template_parts_dir) if Dir.exist?(mobile_template_parts_dir)
  FileUtils.rm_rf(tablet_template_parts_dir) if Dir.exist?(tablet_template_parts_dir)
end

cleanup_root_directory = Dir.pwd
at_exit do
  remove_generated_documentation_collections(cleanup_root_directory)
end
