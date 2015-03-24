require File.dirname(__FILE__) + '/../integration_helper'

describe Locomotive::Steam::Server do

  include Rack::Test::Methods

  def app
    run_server
  end

  describe 'sitemap.xml' do

    subject { get '/sitemap.xml'; last_response.body }

    before { allow(Time).to receive(:now).and_return(Time.parse('2015/03/25 00:00:00')) }

    it 'displays the full sitemap' do
      is_expected.to eq <<-EOF
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>http://example.org</loc>
    <priority>1.0</priority>
  </url>
<url>
    <loc>http://example.org/about-us</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/a-notre-sujet</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/nb/om-oss</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/music</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/notre-musique</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/store</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/magasin</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/contact</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/events</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/evenements</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/filtered</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/basic</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/contest</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/grunge-bands</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/unlisted-pages</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/about-us/john-doe</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/a-notre-sujet/jean-personne</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-1</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/about-us/jane-doe</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/archives/news</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-1</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-2</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-3</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-4</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-5</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-6</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-7</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-8</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-1</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-2</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-3</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-4</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-5</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-6</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-7</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/fr/songs/song-number-8</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-1/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-2/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-3/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-4/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-5/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-6/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-7/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
  <url>
    <loc>http://example.org/songs/song-number-8/band</loc>
    <lastmod>2015-03-25</lastmod>
    <priority>0.9</priority>
  </url>
</urlset>
      EOF
    end

  end

end
