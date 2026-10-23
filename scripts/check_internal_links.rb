# frozen_string_literal: true

require "pathname"
require "uri"

site_dir = Pathname(ARGV.fetch(0, "_site")).expand_path
base_url = ARGV.fetch(1, "").sub(%r{/$}, "")
failures = []

def candidates_for(path)
  return [path.join("index.html")] if path.to_s.end_with?(File::SEPARATOR)
  return [path] unless path.extname.empty?

  [path, Pathname("#{path}.html"), path.join("index.html")]
end

Dir.glob(site_dir.join("**", "*.html")).sort.each do |html_file|
  source = Pathname(html_file)
  html = source.read(encoding: "UTF-8")

  html.scan(/(?:href|src)=["']([^"']+)["']/i).flatten.each do |raw_reference|
    next if raw_reference.empty?
    next if raw_reference.start_with?("#", "mailto:", "tel:", "data:", "javascript:")
    next if raw_reference.match?(%r{\Ahttps?://}i) || raw_reference.start_with?("//")

    reference = URI::DEFAULT_PARSER.unescape(raw_reference.split(/[?#]/, 2).first)
    if reference.start_with?("/")
      reference = reference.delete_prefix(base_url) if !base_url.empty? && reference.start_with?("#{base_url}/")
      target = site_dir.join(reference.sub(%r{\A/+}, ""))
    else
      target = source.dirname.join(reference)
    end

    resolved = candidates_for(target.cleanpath)
    next if resolved.any?(&:file?)

    relative_source = source.relative_path_from(site_dir)
    failures << "#{relative_source}: #{raw_reference}"
  rescue URI::InvalidURIError
    failures << "#{source.relative_path_from(site_dir)}: invalid URI #{raw_reference.inspect}"
  end
end

if failures.empty?
  puts "Internal link check passed."
else
  warn "Broken internal references:"
  failures.uniq.sort.each { |failure| warn "- #{failure}" }
  exit 1
end

