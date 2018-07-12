//  Created by Pawel Kowalczuk on 12/07/2018.

import Foundation


extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }

    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }

    subscript (bounds: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}

let urls = ["https://qz.com/1116991/a-biologist-believes-that-trees-speak-a-language-we-can-learn/",
            "https://ocaml.github.io/ocamlunix/index.html",
            "http://www.pkc.io/blog/five-red-flags-signaling-your-rebuild-will-fail/",
            "https://github.com/adjoint-io/bulletproofs",
            "https://bszyman.com/blog/classic-finder",
            "https://www.michaelfogleman.com/rush/",
            "https://neilmitchell.blogspot.com/2018/07/inside-paper-build-systems-la-carte.html",
            "https://www.lrb.co.uk/v40/n13/sarah-perry/hospitalism",
            "https://krebsonsecurity.com/2018/07/notorious-hijack-factory-shunned-from-web/",
            "https://lab.wallarm.com/how-to-trick-csp-in-letting-you-run-whatever-you-want-73cb5ff428aa",
            "https://www.nytimes.com/2018/07/11/technology/personaltech/apple-iphone-screen-time.html",
            "https://makemediumreadable.com/",
            "https://arstechnica.com/science/2018/07/nasa-commercial-crew-analysis-finds-boeing-slightly-ahead-of-spacex/",
            "https://www.forbes.com/sites/alexkonrad/2018/07/09/at-initialized-capital-odd-couple-alexis-ohanian-and-garry-tan-look-to-do-vc-differently/#456e13c43efe",
            "https://www.nytimes.com/2018/07/11/technology/twitter-fake-followers.html",
            "https://www.propublica.org/nerds/gnu-make-illinois-campaign-finance-data-david-eads-propublica-illinois#146596",
            "https://www.wsj.com/articles/fcc-proposes-rebuilding-comment-system-after-thousands-revealed-as-fake-1531315654",
            "https://www.wired.com/story/alphabet-google-x-innovation-loon-wing-graduation/",
            "https://gizmodo.com/inside-san-francisos-fire-department-where-ladders-are-1552279252",
            "https://www.bbc.com/news/world-us-canada-44688274",
            "http://www.galitshmueli.com/system/files/Stat%20Science%20published.pdf",
            "https://developer.apple.com/library/archive/documentation/DeviceDrivers/Conceptual/WritingDeviceDriver/CPluPlusRuntime/CPlusPlusRuntime.html",
            "https://hire.withgoogle.com/public/jobs/icrackedcom/view/P_AAAAAADAAADM4gZucu-A_Y",
            "https://www.metapsychosis.com/at-play-personal-odyssey-chess/",
            "https://earther.com/solar-just-hit-a-record-low-price-in-the-u-s-1826830592",
            "https://www.popularmechanics.com/technology/infrastructure/a20722505/history-of-steel/",
            "http://geoffboeing.com/2018/07/comparing-city-street-orientations/",
            "https://www.theawl.com/2017/06/the-agave-plants-asparagus-death-fetish/",
            "https://www.nytimes.com/2018/07/11/magazine/facebook-google-uber-tech-giants-power.html",
            "https://www.youtube.com/watch?v=v8IQ-X2HkGE",
            "https://write.as/matt/bringing-blogging-to-the-fediverse",
            "https://www.popularmechanics.com/technology/infrastructure/a20722505/history-of-steel/",
            "https://edu.swi-prolog.org/",
            "https://medium.com/dirt-protocol/dirt-protocol-raises-3m-from-general-catalyst-greylock-lightspeed-and-pantera-to-build-a-a76c3295f227",
            "https://medium.com/google-design/google-photos-45b714dfbed1",
            "https://www.nature.com/news/tardigrade-protein-helps-human-dna-withstand-radiation-1.20648",
            "https://en.wikipedia.org/wiki/Alan_Smithee",
            "https://www.pnfsoftware.com/reversing-wasm.pdf",
            "https://github.com/plibither8/markdown-new-tab",
            "http://www.cointotranslate.com/",
            "https://lpeblog.org/2018/07/11/worker-surveillance-and-class-power/",
            "https://www.lrb.co.uk/v33/n05/judith-butler/who-owns-kafka",
            "https://machine-ethics.net/podcast/20-luciano-floridi/",
            "https://sorting.cr.yp.to/",
            "http://www.chicagobusiness.com/article/20180711/OPINION/180719978/to-chicago-with-love-emanuel-is-a-housing-policy-pioneer",
            "https://acmccs.github.io/papers/p1285-duA.pdf",
            "https://eprint.iacr.org/2018/662",
            "https://www.theverge.com/2018/2/8/16991254/chrome-not-secure-marked-http-encryption-ssl",
            "https://www.theverge.com/2018/7/11/17562108/india-department-of-telecommunications-trai-net-neutrality-proposal-approval",
            "https://robert.ocallahan.org/2018/07/why-isnt-debugging-treated-as-first.html",
            "http://nandgame.com/",
            "http://www.rgoarchitects.com/Files/fallacies.pdf",
            "https://www.csiro.au/en/News/News-releases/2018/Trial-wipes-out-more-than-80-per-cent-of-disease-spreading-mozzie?featured=F29EDEB1728C4A92B579C7A5DC28BAD5",
            "http://www.tug.org/TUGboat/tb11-3/tb29greene.pdf",
            "https://cturt.github.io/cinoop.html",
            "https://github.com/ory/oathkeeper",
            "https://www.reuters.com/article/us-usa-tsa-lawsuit/tsa-screeners-win-immunity-from-flier-abuse-claims-u-s-appeals-court-idUSKBN1K125W",
            "https://www.bloomberg.com/news/features/2018-06-26/sky-high-deductibles-broke-the-u-s-health-insurance-system",
            "http://www.hpl.hp.com/hpjournal/pdfs/IssuePDFs/1977-07.pdf",
            "https://github.com/gaia-pipeline/gaia",
            "https://www.sapiens.org/culture/hunter-gatherer-inequality-namibia/",
            "https://en.wikipedia.org/wiki/Impossible_color",
            "https://www.bleepingcomputer.com/news/security/hacker-steals-military-docs-because-someone-didn-t-change-a-default-ftp-password/",
            "http://www.openculture.com/2018/07/nearly-1000-paintings-drawings-vincent-van-gogh-now-digitized-put-online-view-download-collection.html",
            "http://theappendix.net/issues/2014/10/atomic-anxiety-and-the-tooth-fairy-citizen-science-in-the-midcentury-midwest",
            "https://www.macrumors.com/2018/07/10/apple-employee-steals-trade-secrets/",
            "https://www.bleepingcomputer.com/news/security/new-spectre-11-and-spectre-12-cpu-flaws-disclosed/",
            "https://www.npr.org/sections/goatsandsoda/2018/07/10/627355954/how-postcards-solved-the-problem-of-disappearing-rice",
            "http://blog.brownplt.org/2018/07/05/mystery-languages.html",
            "https://boilingsteam.com/an-interview-with-peter-mulholland-ex-vp/",
            "https://bgr.com/2018/07/11/google-chrome-redesign-new-ui-canary/",
            "https://qz.com/1326155/uber-has-terminated-its-self-driving-car-operators-in-pittsburgh/",
            "https://www.cnbc.com/2018/07/11/ca-technologies-soars-after-reportedly-nearing-deal-with-broadcom.html",
            "https://segment.com/blog/goodbye-microservices/",
            "https://www.nationalgeographic.com/science/2018/07/news-china-human-tools-africa-shangchen-hominin-paleoanthropology/",
            "https://www.20papercups.net/programming/sending-receiving-sms-on-linux/",
            "https://99percentinvisible.org/episode/interrobang/",
            "https://www.hsph.harvard.edu/miguel-hernan/causal-inference-book/",
            "https://groups.google.com/forum/m/#!topic/mozilla.dev.platform/wwO48xXFx0A",
            "https://medium.com/@thecreativefund/the-creative-fund-launches-to-back-every-single-project-on-kickstarter-33ac29affdf6",
            "https://www.collectorsweekly.com/articles/an-interview-with-aloha-shirt-author-and-scholar-linda-arthur/",
            "https://cloud.google.com/about/locations/la/",
            "https://www.wsj.com/articles/nissan-admits-emission-test-data-was-falsified-1531139749",
            "https://docs.microsoft.com/en-us/cpp/security/developer-guidance-speculative-execution",
            "https://www.theverge.com/platform/amp/2018/7/11/17562108/india-department-of-telecommunications-trai-net-neutrality-proposal-approval",
            "http://www.dtic.mil/dtic/tr/fulltext/u2/a501580.pdf",
            "https://github.com/thomas4019/pgmongo",
            "https://dyn.com/blog/shutting-down-the-bgp-hijack-factory/",
            "https://www.phoronix.com/scan.php?page=news_item&px=NVIDIA-Jetson-Xavier-Dev-Kit",
            "https://spectrum.ieee.org/video/aerospace/space-flight/don-eyles-space-hacker",
            "https://www.theregister.co.uk/2018/07/10/arm_riscv_website/",
            "https://johncarlosbaez.wordpress.com/2018/07/10/random-points-on-a-sphere-part-1/",
            "https://github.com/chubin/cheat.sh",
            "https://arstechnica.com/tech-policy/2018/07/tesla-whistleblower-tells-sec-of-alleged-wrongdoing-at-gigafactory/",
            "https://bitwarden.com/",
            "https://gizmodo.com/these-bizarre-glasses-promise-to-cure-your-motion-sickn-1827479936",
            "http://www.prosecraft.io/analysis/vividness/percentile/#50",
            "https://blogs.msdn.microsoft.com/oldnewthing/20110316-00/?p=11203/",
            "http://pepijndevos.nl/2018/07/04/loefflers-discrete-cosine-transform-algorithm-in-futhark.html",
            "https://pivorak.com/talks/rubylike-frontend",
            "http://blog.eladgil.com/2010/10/benefits-of-thinking-small.html",
            "https://www.gravwell.io/blog/gravwell-community-edition",
            "https://blog.jetbrains.com/kotlin/2018/07/kotlinnative-v0-8-released/",
            "https://www.cnn.com/2018/07/09/us/apollo-moon-landings-study/index.html",
            "https://usefathom.com",
            "https://cloudplatform.googleblog.com/2018/07/introducing-jib-build-java-docker-images-better.html",
            "https://medium.com/s/futurehuman/reversed-aging-pig-organs-and-the-future-of-humankind-50f1cdb1e014",
            "https://pubs.aeaweb.org/doi/pdfplus/10.1257/jep.27.1.3",
            "https://medium.com/@byjad/ive-recently-become-aware-of-the-frighteningly-popular-extremely-careless-trend-of-publicly-542b396a0372",
            "https://blog.cloudflare.com/serverless-performance-with-cpu-bound-tasks/?h",
            "https://www.youtube.com/watch?v=uRLgZCV4bOM",
            "https://medium.com/s/story/how-i-fully-quit-google-and-you-can-too-4c2f3f85793a",
            "http://brrt-to-the-future.blogspot.com/2018/07/perl-6-on-moarvm-has-had-jit-for-few.html",
            "https://medium.com/@MaryamAshoori/designing-a-quantum-computing-board-game-de4a450cad8c?source=linkShare-82a8964e3ad2-1531274721",
            "https://www.youtube.com/watch?v=szt7f5NmE9E",
            "https://tinyletter.com/jamesbowman/letters/placement-stencils",
            "https://www.amazon.com/",
            "https://qz.com/1313944/being-rational-all-the-time-isnt-going-to-do-you-any-favors/",
            "https://github.com/gotoz/runq/",
            "http://nymag.com/daily/intelligencer/2018/07/trump-putin-russia-collusion.html",
            "https://blog.ubuntu.com/2018/07/09/minimal-ubuntu-released",
            "https://craft.co/reports/where-do-the-most-productive-employees-work",
            "https://www.nytimes.com/2018/07/09/business/no-poach-fast-food-wages.html",
            "https://www.wired.com/story/sex-beer-and-coding-inside-facebooks-wild-early-days",
            "https://lareviewofbooks.org/article/bruno-latour-tracks-down-gaia/#!",
            "https://www.dropbox.com/s/ao7c090p8bg1hk3/Lipton%20and%20Steinhardt%20-%20Troubling%20Trends%20in%20Machine%20Learning%20Scholarship.pdf?dl=0",
            "https://www.rollingstone.com/music/music-features/vaporwave-floppy-disk-trend-666085/",
            "https://blog.andyet.com/2018/07/10/starters-finishers-and-large-teams",
            "https://arstechnica.com/science/2018/07/elon-musk-says-he-will-fund-fixing-flints-foul-water/",
            "https://www.socialgameslaw.com/2018/07/videogames-apps-legal-liability.html",
            "https://www.vusec.net/wp-content/uploads/2018/07/tlbleed-author-preprint.pdf",
            "https://www.roadtovr.com/magic-leap-ar-developer-demo-nvidia-tx2-cpu-gpu-hardware/",
            "https://arstechnica.com/gaming/2018/07/nintendo-reportedly-rolling-out-new-more-hack-proof-switch-hardware/",
            "https://www.washingtonpost.com/business/economy/2018/07/10/5c63a730-848b-11e8-8f6c-46cb43e3f306_story.html?noredirect=on&utm_term=.0b02f3870a0c",
            "https://www.reuters.com/article/us-uber-resignation/uber-executive-resigns-following-probe-into-racial-discrimination-idUSKBN1K109G",
            "http://nautil.us/issue/22/slow/the-secret-history-of-the-supernova-at-the-bottom-of-the-sea",
            "https://www.theguardian.com/commentisfree/2018/jul/10/breastfeeding-its-bad-for-business",
            "https://blog.benjojo.co.uk/post/beating-the-broadcast-delay-world-cup",
            "https://blog.xenproject.org/2018/07/10/whats-new-in-the-xen-project-hypervisor-4-11/",
            "https://www.forbes.com/sites/bernardmarr/2018/07/10/the-economics-of-artificial-intelligence-how-cheaper-predictions-will-change-the-world/",
            "https://sensorstechforum.com/arch-linux-aur-repository-found-contain-malware/",
            "https://clemenswinter.com/2018/07/09/how-to-analyze-billions-of-records-per-second-on-a-single-desktop-pc/",
            "http://www.anu.edu.au/news/all-news/anu-scientists-discover-the-world%E2%80%99s-oldest-colours",
            "https://ico.org.uk/media/action-weve-taken/2259371/investigation-into-data-analytics-for-political-purposes-update.pdf",
            "https://www.cam.ac.uk/research/news/cambridge-launches-uks-first-quantum-network",
            "https://homes.cs.washington.edu/~bornholt/post/building-synthesizer.html",
            "https://github.com/wireapp/pqproteus",
            "https://www.wired.co.uk/article/twitter-metadata-user-privacy",
            "http://theappendix.net/issues/2014/10/cambodian-dancers-auguste-rodin-and-the-imperial-imagination",
            "https://people.csail.mit.edu/vlk/spectre11.pdf",
            "https://blog.openai.com/glow/",
            "https://stories.sagefy.org/eight-big-ideas-of-learning-tl-dr-edition-95302c848d87",
            "http://slatestarcodex.com/2018/07/10/melatonin-much-more-than-you-wanted-to-know/",
            "https://github.com/ejmg/help-why-cant-i-hold-all-these-mutuals",
            "https://www.bloomberg.com/news/articles/2018-07-09/uber-will-rent-scooters-through-its-app-in-partnership-with-lime",
            "https://techcrunch.com/2018/07/10/alpr-license-plate-recognition-ice-irvine-company/",
            "https://blog.regehr.org/archives/1292",
            "https://thegradient.pub/nlp-imagenet/",
            "https://www.theverge.com/2018/7/9/17549668/app-wikipedia-location-facts",
            "https://www.laphamsquarterly.org/roundtable/children-anaxagoras",
            "https://www.alexgallego.org/perf/compiler/explorer/flatbuffers/smf/2018/06/30/effects-cpu-turbo.html",
            "https://www.bbc.co.uk/news/uk-wales-44746447",
            "https://blog.ycombinator.com/why-does-your-company-deserve-more-money/",
            "https://blog.asrpo.com/making_a_low_level_debugger_part_3",
            "https://blog.scrapinghub.com/web-scraping-at-scale-lessons-learned-scraping-100-billion-products-pages",
            "https://www.nature.com/articles/d41586-018-05655-3",
            "http://htck.github.io/bayeux",
            "http://www.latimes.com/business/hiltzik/la-fi-hiltzik-employment-20180710-story.html",
            "https://www.bleepingcomputer.com/news/security/thermanator-attack-steals-passwords-by-reading-thermal-residue-on-keyboards/",
            "http://gettingsimple.com/the-growth-mindset-how-to-measure-your-own-success",
            "https://medium.com/stanfords-gdpi/human-centered-ai-building-trust-democracy-and-human-rights-by-design-2fc14a0b48af",
            "https://arstechnica.com/information-technology/2018/07/iphone-crashing-bug-likely-caused-by-code-added-to-appease-chinese-govt/",
            "https://www.arm-basics.com/",
            "https://archive.org/download/phd_student_survey_summary_report_0a5c/phd_student_survey_summary_report_0a5c.pdf",
            "https://www.theguardian.com/world/2018/jul/09/the-man-who-paves-indias-roads-with-old-plastic",
            "https://thegradient.pub/why-rl-is-flawed/",
            "https://www.bloomberg.com/news/articles/2018-07-09/half-of-icos-die-within-four-months-after-token-sales-finalized",
            "http://www.newelectronics.co.uk/electronics-news/high-power-thermoelectric-generator-utilises-thermal-difference-of-only-5c/175937/",
            "https://themes.gohugo.io/after-dark/",
            "https://gohugo.io/news/lets-celebrate-hugos-5th-birthday/",
            "https://www.theatlantic.com/science/archive/2018/07/the-worlds-worst-industrial-disaster-is-still-unfolding/560726/?single_page=true",
            "http://jeffreykegler.github.io/Ocean-of-Awareness-blog/individual/2018/07/knuth_1965_2.html",
            "https://coreos.com/blog/fedora-coreos-red-hat-coreos-and-future-container-linux",
            "https://medium.com/netflix-techblog/introducing-lemur-ceae8830f621",
            "https://quillette.com/2018/07/11/the-transhumanism-revolution-oppression-disguised-as-liberation/",
            "https://blogs.windows.com/devices/2018/07/09/meet-surface-go-starting-at-399-msrp-its-the-smallest-and-most-affordable-surface-yet/",
            "https://twitter.com/starsandrobots/status/1016894041173188608",
            "https://www.natlawreview.com/article/german-court-issues-first-gdpr-ruling",
            "https://arstechnica.com/science/2018/07/drugs-that-kill-off-old-cells-may-limit-a-bodys-aging/",
            "https://www.theguardian.com/environment/2018/jul/09/one-in-three-fish-caught-never-makes-it-to-the-plate-un-report",
            "https://testpilot.firefox.com/experiments/firefox-lockbox/",
            "https://eng.lyft.com/from-shallow-to-deep-learning-in-fraud-9dafcbcef743",
            "https://blogs.scientificamerican.com/observations/more-recycling-wont-solve-plastic-pollution/",
            "http://stevelosh.com/blog/2018/07/fun-with-macros-if-let/",
            "https://www.wired.com/story/how-silicon-valley-fuels-an-informal-caste-system/",
            "https://www.wired.com/story/a-landmark-legal-shift-opens-pandoras-box-for-diy-guns/",
            "https://www.grsplus.com/blog/2018/07/azure-storage-how-fast-are-disks/",
            "https://arxiv.org/ftp/arxiv/papers/1807/1807.01656.pdf",
            "https://ma.rtijn.org/2018/07/08/meet-your-mappers.html",
            "https://www.spectrumnews.org/features/deep-dive/how-to-game-the-search-for-autism-treatments/",
            "https://drewdevault.com/2018/07/09/Simple-correct-fast.html",
            "https://www.atlasobscura.com/articles/cooking-food-by-volcano",
            "http://yuba.stanford.edu/~grg/docs/sdn-chip-sigcomm-2013.pdf",
            "https://www.scientificamerican.com/article/ancient-dog-dna-reveals-close-relationship-with-contagious-cancer/",
            "https://www.nakedcapitalism.com/2018/07/sec-knifes-whistleblower-program.html",
            "https://github.com/ATF19/react-native-shop-ui",
            "https://www.frederikcreemers.be/posts/code-layout/",
            "https://android-developers.googleblog.com/2018/07/android-emulator-amd-processor-hyper-v.html",
            "https://www.nature.com/articles/d41586-018-05599-8",
            "https://www.bbc.com/news/amp/technology-44783779",
            "http://www.craftinginterpreters.com/compiling-expressions.html",
            "https://github.com/tomasz-oponowicz/spoken_language_identification",
            "https://www.theguardian.com/news/live/2018/jul/10/thai-cave-rescue-third-mission-planned-to-bring-out-remaining-boys-and-coach-live-updates",
            "https://daniel.haxx.se/blog/2018/07/11/curl-7-61-0/",
            "https://billmei.net/blog/marketing",
            "https://www.cnbc.com/2018/07/10/ex-apple-employee-charged-with-stealing-autonomous-car-trade-secrets.html",
            "https://www.bicycling.com/bikes-gear/a22092182/ceramicspeeds-driven-concept-might-become-the-worlds-most-efficient-drivetrain/",
            "https://mondaynote.com/intels-toxic-culture-1b79905adf45",
            "https://clearfounder.com/originality-is-overrated-the-case-for-copying-business-ideas/",
            "https://www.troyhunt.com/the-111-million-pemiblanc-credential-stuffing-list/",
            "https://arxiv.org/abs/1807.00962",
            "https://www.miamiherald.com/news/local/article214370529.html",
            "https://www.sciencealert.com/we-discovered-how-hiv-shields-itself-immune-system-viral-capsid-inositol-hexakisphosphate-ip6",
            "https://www.theguardian.com/technology/2018/jul/11/facebook-fined-for-data-breaches-in-cambridge-analytica-scandal",
            "https://eia-global.org/reports/20180709-blowing-it-illegal-production-and-use-of-banned-cfc-11-in-chinas-foam-blowing-industry",
            "https://www.llnl.gov/news/llnl-releases-newly-declassified-test-videos",
            "https://www.reddit.com/r/firefox/comments/8xpu9i/ghostery_now_displaying_ads_in_germany_marketed/",
            "https://www.wired.com/story/how-a-startup-is-using-the-blockchain-to-protect-your-privacy/",
            "https://blog.computes.com/arpadyne-the-new-internet-eb6a42181a2",
            "https://news.vice.com/en_us/article/vbjmmm/facebook-let-a-russian-company-with-ties-to-the-kremlin-data-from-its-users",
            "https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00112.html",
            "https://electrek.co/2018/07/09/uk-extensive-new-plan-all-electric-2040/",
            "https://www.oasislabs.com/blog/",
            "https://coliving.ly/",
            "https://futhark-lang.org/blog/2018-07-09-futhark-0.6.1-released.html",
            "https://www.quantamagazine.org/to-make-sense-of-the-present-brains-may-predict-the-future-20180710/",
            "https://www.bloomberg.com/news/articles/2018-07-07/saudi-aramco-s-2-trillion-zombie-ipo",
            "https://www.techdirt.com/articles/20180705/01033440176/more-police-admitting-that-fosta-sesta-has-made-it-much-more-difficult-to-catch-pimps-traffickers.shtml",
            "https://publicintelligence.net/dia-warp-drives/",
            "https://www.sciencedaily.com/releases/2018/07/180705143859.htm",
            "https://www.the-tls.co.uk/articles/public/lewis-carrolls-adventures-russia/",
            "https://www.amazon.com/High-Growth-Handbook-Elad-Gil/dp/1732265100",
            "http://www.disruptiveproactivity.com/2018/07/instapaper-stopped-trying-to-compete-with-pinboard/",
            "http://www.sirc.org/publik/drinking4.html",
            "https://blog.alexellis.io/iot-nodemcu-sensor-bme280/",
            "https://github.com/mukund109/word-mesh/",
            "https://www.quantamagazine.org/slime-molds-remember-but-do-they-learn-20180709/",
            "https://www.economist.com/the-world-if/2018/07/07/what-if-people-were-paid-for-their-data",
            "https://www.asktheheadhunter.com/11987/jobs-numbers-euphoria",
            "https://www.digitalocean.com/currents/june-2018/",
            "https://www.wired.com/story/surface-go-microsofts-big-bet-on-a-tiny-computer-future/?mbid=social_twitter&__twitter_impression=true",
            "https://css-tricks.com/the-css-paint-api/",
            "https://www.inverse.com/article/46909-tesla-solar-roof-elon-musk-shares-incredible-stats-from-california",
            "https://www.nytimes.com/2018/07/09/technology/facebook-facial-recognition-privacy.html",
            "https://github.com/MitMaro/git-interactive-rebase-tool",
            "https://apsdehal.in/blog/chrome-developer-tools-to-master",
            "https://scrapy.apki.io/",
            "https://9to5mac.com/2018/07/11/kuo-iphone-ipad-mac-apple-watch-rumors/",
            "https://daily.jstor.org/life-after-mercury-poisoning/",
            "https://github.com/rhysd/vim.wasm",
            "https://www.bleepingcomputer.com/news/security/security-firm-sued-for-failing-to-detect-malware-that-caused-a-2009-breach/",
            "http://andrewpekler.com/phantom-islands/",
            "https://www.vanityfair.com/news/2018/07/valley-of-genius-excerpt-google",
            "https://blog.cloudflare.com/serverless-performance-with-cpu-bound-tasks/?hn",
            "https://www.scientificamerican.com/article/what-went-wrong-with-the-f-35-lockheed-martins-joint-strike-fighter/",
            "https://www.uef.fi/en/-/runsas-saunominen-suojaa-miehia-muistisairaudelta",
            "https://www.theverge.com/2018/7/10/17552276/elon-musk-thailand-cave-rescue-mini-submarine-not-needed",
            "http://infoproc.blogspot.com/2018/07/game-over-genomic-prediction-of-social.html",
            "https://www.sltrib.com/opinion/editorial/2018/07/10/tribune-editorial-our/",
            "https://blogs.msdn.microsoft.com/commandline/2018/07/10/windows-command-line-inside-the-windows-console/",
            "https://riscv-basics.com/",
            "https://www.tomshardware.com/reviews/best-cheap-cpus,5668.html",
            "https://money.cnn.com/2018/07/02/media/moviepass-stock-debt-sale/index.html",
            "https://www.theverge.com/circuitbreaker/2018/7/9/17550252/microsofts-surface-go-tablet-10-inch-screen-399",
            "https://blogs.technet.microsoft.com/surface/2018/07/10/behind-the-design-meet-the-new-surface-go/",
            "https://blog.bethselamin.de/posts/argh-pm.html",
            "https://www.newyorker.com/news/news-desk/the-map-of-israeli-settlements-that-shocked-barack-obama",
            "http://www.latimes.com/business/autos/la-fi-hy-tesla-china-20180710-story.html",
            "https://www.theatlantic.com/entertainment/archive/2018/07/att-changing-hbo/564635/?single_page=true",
            "https://github.com/junior08/Face-Recognizer",
            "https://www.isotrident.com/",
            "https://meta.discourse.org/t/meta-is-moving-to-the-cloud-cloud-with-lightning/72819/30",
            "https://www.cbc.ca/news/technology/salmonella-listeria-dna-ultraviolet-light-1.4736801",
            "https://liliputing.com/2018/07/linux-apps-on-the-acer-chromebook-tab-10.html",
            "https://blog.twitter.com/engineering/en_us/topics/insights/2018/videoqualityonmobile.html",
            "https://www.theguardian.com/environment/2018/jul/09/mysterious-source-of-illegal-ozone-killing-emissions-revealed-say-investigators",
            "https://www.usenix.org/system/files/conference/nsdi16/nsdi16-paper-istvan.pdf",
            "https://gizmodo.com/hobbyists-lose-fight-to-escape-the-faas-toy-drone-rules-1827403156",
            "https://arstechnica.com/science/2018/07/nasa-stays-on-ariane-5-rocket-to-launch-the-james-webb-telescope-for-now/",
            "https://www.wired.com/story/sex-beer-and-coding-inside-facebooks-wild-early-days/",
            "https://gizmodo.com/amazon-and-orlando-cops-controversial-face-recognition-1827483145",
            "https://amp.cnn.com/cnn/2018/07/08/politics/world-health-assembly-breastfeeding/index.html",
            "https://news.crunchbase.com/news/your-vc-needs-a-billion-dollar-exit-you-do-not/",
            "https://tapoueh.org/blog/2018/07/modeling-for-concurrency/",
            "https://gizmodo.com/nvidia-taught-an-ai-to-flawlessly-erase-watermarks-from-1827474196",
            "https://www.washingtonexaminer.com/news/white-house/brett-kavanaughs-defense-of-nsa-phone-surveillance-looms-as-confirmation-question",
            "https://code.likeagirl.io/quick-tips-to-transition-from-net-framework-to-net-core-30060d4884c4",
            "https://blockchain.works-hub.com/learn/very-basic-elliptic-curve-cryptography-cb5c2",
            "http://practicalhuman.org/climate/b1a93a2fc",
            "https://blog.ubuntu.com/2018/07/09/minimal-ubuntu-released",
            "https://massivesci.com/articles/grandfather-neuroscience-machine-assembly-code/",
            "https://www.nytimes.com/2018/07/08/world/europe/uk-dawn-sturgess-novichok-salisbury.html",
            "https://slate.com/technology/2018/07/what-reporting-sexual-harassment-taught-me.html",
            "https://www.xda-developers.com/firefox-android-maintenance-new-browser/",
            "https://en.wikipedia.org/wiki/Government_cheese",
            "https://twitter.com/FiloSottile/status/1016495719665020935",
            "https://www.theatlantic.com/science/archive/2018/07/the-worlds-worst-industrial-disaster-is-still-unfolding/560726/?single_page=true",
            "https://www.popsci.com/china-laser-rifle-energy-weapon",
            "https://www.cnet.com/roadshow/news/tesla-model-3-orders-open-configurator/?ftag=COS-05-10aaa0b&linkId=54067181",
            "https://www.theguardian.com/business/2018/jul/09/monsanto-trial-roundup-weedkiller-cancer-dewayne-johnson",
            "https://hackernoon.com/using-fpga-superpowers-to-speed-up-cloud-workloads-with-inaccel-182058c9183b",
            "https://thenextweb.com/politics/2018/07/09/white-house-earmarks-over-1b-for-quantum-technology-research/",
            "https://www.bloomberg.com/news/articles/2018-07-10/u-s-is-said-to-move-forward-on-200-billion-china-tariff-list",
            "https://www.viva64.com/en/b/0574/",
            "https://nshipster.com/return/",
            "https://money.cnn.com/2018/07/10/technology/mailru-facebook-russia/index.html",
            "https://dolphin-emu.org/blog/2018/07/06/dolphin-progress-report-june-2018/",
            "https://www.axios.com/california-heat-wave-wildfires-climate-change-humans-f72ff67a-2b5b-4cde-910f-4d74cc60bfb3.html",
            "https://hackernoon.com/7-features-proposed-so-far-in-python-3-8-acb0d97c83c8",
            "https://en.wikipedia.org/wiki/Gabriel%27s_Horn",
            "https://blog.ubuntu.com/2018/07/09/minimal-ubuntu-released",
            "http://www.theamericanconservative.com/articles/xi-jinpings-great-leap-backward/",
            "https://www.iafrikan.com/2018/07/09/device-for-testing-malaria-without-a-need-for-drawing-blood-wins-a-top-prize/",
            "http://www.latimes.com/business/hollywood/la-fi-ct-hollywood-sign-sky-tram-20180710-story.html",
            "https://newatlas.com/ceramicspeed-driven-shaft-drive/55364/",
            "https://boingboing.net/2018/07/09/youtube-plans-to-spend-25-mil.html/amp",
            "https://www.zdnet.com/article/firefox-and-the-4-year-battle-to-have-google-to-treat-it-as-a-first-class-citizen/",
            "https://old.reddit.com/r/getdisciplined/comments/8xbpg7/method_i_tattooed_a_set_of_checkboxes_on_my_hand/",
            "https://www.mails.wtf",
            "https://lawless.tech/spacefab-us-ceo-randy-chung-u-s-government-is-providing-an-encouraging-environment-for-commercial-spaceflight/",
            "https://www.bleepingcomputer.com/news/security/timehop-security-breach-affects-the-company-s-entire-21-million-userbase/",
            "https://arstechnica.com/tech-policy/2018/07/net-neutrality-rules-are-illegal-according-to-trumps-supreme-court-pick/",
            "http://akkartik.name/post/literate-programming",
            "https://www.phoronix.com/scan.php?page=news_item&px=ARM-RISC-V-Facts",
            "https://arstechnica.com/science/2018/07/meet-the-telescope-that-may-soon-show-you-an-exo-eclipse/",
            "https://bugs.launchpad.net/ubuntu/+source/unity/+bug/1777415",
            "https://money.cnn.com/2018/07/10/investing/stock-buybacks-record-tax-cuts/index.html",
            "https://gizmodo.com/at-ts-big-plan-for-hbo-is-to-fill-it-with-more-random-t-1827449321",
            "http://producthunt.com/posts/flash-3",
            "http://neugierig.org/software/blog/2018/07/options.html",
            "https://www.bbc.co.uk/news/world-us-canada-44725026",
            "https://www.buzzfeed.com/kassycho/chinese-woman-ink-xi-jinping-live-stream-disappeared",
            "https://www.theguardian.com/global/2018/jul/08/generation-wealth-how-the-modern-world-fell-in-love-with-money",
            "https://www.redhat.com/en/blog/kubernetes-platform-what%E2%80%99s-next-questions-and-answers",
            "https://econstuffs.wordpress.com/2018/07/10/the-giving-free-cash-to-the-poor-will-make-them-lazy-myth/",
            "https://blog.dataguru.hk/2018/07/10/hong-kong-higher-floors-are-more-expensive-and-4-is-avoided/",
            "https://mortoray.com/2018/07/09/i-dont-know-how-to-create-a-website/",
            "https://www.sitepoint.com/optimization-auditing-a-deep-dive-into-chromes-dev-console/",
            "https://objective-see.com/blog/blog_0x34.html",
            "https://www.reddit.com/r/learnprogramming/comments/8wr9xv/what_i_would_do_differently_if_i_was_learning_to/",
            "https://www.bloomberg.com/news/articles/2018-07-10/ex-apple-employee-charged-with-stealing-secrets-for-chinese-firm",
            "https://www.engadget.com/2018/07/11/uber-hr-chief-liane-hornsey-resigns-racial-discrimination-probe",
            "https://www.brow.sh/",
            "http://www.khaosodenglish.com/news/2018/07/10/elon-musk-sub-impractical-wont-be-used/",
            "https://www.reddit.com/r/scala/comments/8xreuv/keynote_the_last_hope_for_scalas_infinity_war/",
            "https://www.bbc.co.uk/news/science-environment-44738952",
            "https://www.forbes.com/sites/forbesdigitalcovers/2018/07/11/how-20-year-old-kylie-jenner-built-a-900-million-fortune-in-less-than-3-years/#1f28a1ddaa62",
            "https://www.bleepingcomputer.com/news/security/malware-found-in-arch-linux-aur-package-repository/",
            "https://www.vice.com/en_us/article/434gqw/i-made-my-shed-the-top-rated-restaurant-on-tripadvisor",
            "https://arstechnica.com/science/2018/07/us-puts-fierce-squeeze-on-breastfeeding-policy-shocking-health-officials/",
            "https://slate.com/business/2018/07/elon-musks-attacks-on-reporter-linette-lopez-need-to-stop.html",
            "http://approximatelycorrect.com/2018/07/10/troubling-trends-in-machine-learning-scholarship/",
            "http://craftinginterpreters.com/",
            "https://arxiv.org/abs/1802.07068v2",
            "https://www.theguardian.com/world/2018/jul/09/the-man-who-paves-indias-roads-with-old-plastic",
            "https://techcrunch.com/2018/07/09/distributed-ledgeroasis-labs/",
            "https://techcrunch.com/2018/07/10/ex-apple-employee-charged-with-stealing-self-driving-car-secrets/"
]

for url in urls {
    guard url.hasPrefix("https") else {
        print("👮‍♀️ WON'T PROCESS UNSAFE HTTP \(url)")
        continue
    }
    guard !url.hasSuffix("pdf") else {
        print("👮‍♀️ WON'T PROCESS pdf \(url)")
        continue
    }

    print("🖥 PROCESSING \(url)")
    let url = URL(string: url)!
    let data = (try? Data(contentsOf: url)) ?? Data()
    var content = ""
    if let c = String(data: data, encoding: .utf8) {
        content = c
    } else {
        print("😱 CANNOT PARSE \(url)")
    }
    content = content.replacingOccurrences(of: "\n", with: "")

    var st = Date()
    let bodyS = content.range(of: "<body")
    let bodyE = content.range(of: "</body>")


    if let bodyS = bodyS, let bodyE = bodyE {
//        let bsi = content.index(content.startIndex, offsetBy: bodyS.lowerBound)
//        let bei = content.index(content.startIndex, offsetBy: bodyE.upperBound)
        let body = String(content[bodyS.lowerBound..<bodyE.upperBound])
        print("⏱ BODY TAKES: \(fabs(st.timeIntervalSinceNow))")
        if !body.isEmpty {

            st = Date()

            var paragraphExp = try! NSRegularExpression(pattern: "(<p>)(.+?)(</p>)",
                                                        options: .caseInsensitive)

            var matches = paragraphExp.matches(in: body,
                                               options: .reportCompletion,
                                               range: NSRange(location: 0, length: body.count))

            if matches.isEmpty {
                paragraphExp = try! NSRegularExpression(pattern: "(<p )(.+?)(</p>)",
                                                            options: .caseInsensitive)

                matches = paragraphExp.matches(in: body,
                                                   options: .reportCompletion,
                                                   range: NSRange(location: 0, length: body.count))
            }

            var tmp = ""
            var result = ""
            let maxPC = min(matches.count, 10)
            for m in matches[0..<maxPC] {
                let r = m.range
                let s = content.index(content.startIndex, offsetBy: r.lowerBound)
                let e = content.index(content.startIndex, offsetBy: r.upperBound)
                tmp += String(body[s..<e])
            }
            print("⏱ PARAGRAPH TAKES: \(fabs(st.timeIntervalSinceNow)) MATCHES: \(matches.count)")
            if tmp.isEmpty {
                print("OH NO EMPTY AGAIN 😱")
            }
            result = matches.isEmpty ? body : tmp

            st = Date()
            let style = try! NSRegularExpression(pattern: "(<style)(.+?)(</style>)",
                                                 options: .caseInsensitive)
            matches = style.matches(in: result,
                                    options: .reportCompletion,
                                    range: NSRange(location: 0, length: result.count))

            tmp = ""
            var start = result.startIndex
            for m in matches {
                let r = m.range
                let s = content.index(content.startIndex, offsetBy: r.lowerBound)
                let e = content.index(content.startIndex, offsetBy: r.upperBound)
                tmp += String(result[start..<s])
                start = e
            }
            print("⏱ STYLE TAKES: \(fabs(st.timeIntervalSinceNow)) MATCHES: \(matches.count)")

            if tmp.isEmpty && !matches.isEmpty {
                print("OH NO EMPTY AGAIN 😱")
            }

            result = matches.isEmpty ? result : tmp


            st = Date()
            let script = try! NSRegularExpression(pattern: "(<script)(.+?)(</script>)",
                                                 options: .caseInsensitive)
            matches = script.matches(in: result,
                                    options: .reportCompletion,
                                    range: NSRange(location: 0, length: result.count))

            tmp = ""
            start = result.startIndex
            for m in matches {
                let r = m.range
                let s = content.index(content.startIndex, offsetBy: r.lowerBound)
                let e = content.index(content.startIndex, offsetBy: r.upperBound)
                tmp += String(result[start..<s])
                start = e
            }
            print("⏱ SCRIPT TAKES: \(fabs(st.timeIntervalSinceNow)) MATCHES: \(matches.count)")

            if tmp.isEmpty && !matches.isEmpty {
                print("OH NO EMPTY AGAIN 😱")
            }

            result = matches.isEmpty ? result : tmp


            st = Date()
            let htmlTag = try! NSRegularExpression(pattern: "<[^>]+>",
                                                   options: .caseInsensitive)

            matches = htmlTag.matches(in: result,
                                      options: .reportCompletion,
                                      range: NSRange(location: 0, length: result.count))

            tmp = ""
            start = result.startIndex
            for m in matches {
                let r = m.range
                let s = content.index(content.startIndex, offsetBy: r.lowerBound)
                let e = content.index(content.startIndex, offsetBy: r.upperBound)
                tmp += String(result[start..<s])
                start = e
            }
            print("⏱ HTML TAGS TAKES: \(fabs(st.timeIntervalSinceNow)) MATCHES: \(matches.count)")
            if tmp.isEmpty {
                print("OH NO EMPTY AGAIN 😱")
            }
            result = tmp
            result = result
                .components(separatedBy: .whitespacesAndNewlines)
                .filter({!$0.isEmpty})
                .joined(separator: " ")
//            result = String(result[result.startIndex..<result.index(result.startIndex, offsetBy: min(result.count, 200))])
            print(result)
            print("\n")

        } else {
            print("‼️ body is empty")
        }
    } else {
        print("‼️ NO BODY IN \(url)")
    }
}

//    if !matches.isEmpty {
//
//        let m = matches[0]
//        let s = content.index(content.startIndex, offsetBy: m.range.lowerBound)
//        let e = content.index(content.startIndex, offsetBy: m.range.upperBound)
//        let body = String(content[s..<e])
//        if !body.isEmpty {
//            let paragraphExp = try! NSRegularExpression(pattern: "(<p>)(.*)(</p>)",
//                                                        options: .caseInsensitive)
//            let paragraphs = paragraphExp.matches(in: body,
//                                                  options: NSRegularExpression.MatchingOptions(rawValue: 0),
//                                                  range: NSRange(location: 0, length: body.count))
//            if !paragraphs.isEmpty {
//                var tmp = ""
//                for p in paragraphs {
//                    let r = p.range
//                    let s = content.index(body.startIndex, offsetBy: r.lowerBound)
//                    let e = content.index(body.startIndex, offsetBy: r.upperBound)
//                    tmp.append(String(body[s..<e]))
//                }
//                if !tmp.isEmpty {
//                    let htmlTag = try! NSRegularExpression(pattern: "<[^>]+>",
//                                                           options: .caseInsensitive)
//
//
//                    let tags = htmlTag.matches(in: tmp,
//                                               options: NSRegularExpression.MatchingOptions(rawValue: 0),
//                                               range: NSRange(location: 0, length: tmp.count))
//
//                    if !tags.isEmpty {
//
//                        var res = ""
//                        var start = tmp.startIndex
//                        for tag in tags {
//                            let r = tag.range
//                            let s = content.index(body.startIndex, offsetBy: r.lowerBound)
//                            let e = content.index(body.startIndex, offsetBy: r.upperBound)
//                            res += String(tmp[start..<s])
//                            start = e
//                        }
//
//                        if res.isEmpty {
//                            print("‼️😱 RESULT IS EMPTY IN  \(url)")
//                        } else {
//                            print("✅ \(url)")
//                        }
//
//                    } else {
//                        print("‼️ NO TAGS IN \(url)")
//                    }
//
//                } else {
//                    print("‼️ FOUND PARAGRAPHS ARE EMPTY \(url)")
//                }
//            } else {
//                print("‼️ NO PARAGRAPHS IN \(url)")
//            }
//        } else {
//            print("‼️ FOUND BODY IS EMPTY \(url)")
//        }
//    } else {
//        print("‼️ NO BODY IN \(url)")
//    }
//}


