
pg_dump --schema-only --clean \
    -tareacodemap_id_seq \
    -tcogisinspection_st_id_seq \
    -tcogisspill_st_id_seq \
    -tfeedentry_published_seq_seq \
    -tfeedsource_id_seq \
    -tfracfocusparse_seqid_seq \
    -tfracfocusparsechemical_seqid_seq \
    -tfracfocusreport_seqid_seq \
    -tfracfocusreportchemical_seqid_seq \
    -tfracfocusscrape_seqid_seq \
    -tla_lease_blocks_id_seq \
    -tleaseblockcentroid_id_seq \
    -tnrcmaterials_id_seq \
    -tnrcscrapedmaterial_st_id_seq \
    -tnrcscrapertarget_id_seq \
    -tnrcunits_id_seq \
    -tpa_drillingpermit_st_id_seq \
    -tpa_spud_st_id_seq \
    -tpa_violation_st_id_seq \
    -tpublishedfeeditems_id_seq \
    -trssfeed_id_seq \
    -twv_drillingpermit_st_id_seq \
    -tRSSEmailSubscription_st_id_seq \
    -t"\"AreaCodeMap\"" \
    -t"\"BotTask\"" \
    -t"\"BotTaskError\"" \
    -t"\"BotTaskParams\"" \
    -t"\"BotTaskStatus\"" \
    -t"\"CO_Permits\"" \
    -t"\"CogisInspection\"" \
    -t"\"CogisSpill\"" \
    -t"\"feedentry\"" \
    -t"\"FeedEntryTag\"" \
    -t"\"FeedSource\"" \
    -t"\"FracFocusPDF\"" \
    -t"\"FracFocusParse\"" \
    -t"\"FracFocusParseChemical\"" \
    -t"\"FracFocusReport\"" \
    -t"\"FracFocusReportChemical\"" \
    -t"\"FracFocusScrape\"" \
    -t"\"GeocodeCache\"" \
    -t"\"LA_LeaseBlocks\"" \
    -t"\"LeaseBlockCentroid\"" \
    -t"\"Nightfire_file\"" \
    -t"\"Nightfire_record\"" \
    -t"\"NrcAnalysis\"" \
    -t"\"NrcGeocode\"" \
    -t"\"NrcMaterials\"" \
    -t"\"NrcParsedReport\"" \
    -t"\"NrcScrapedFullReport\"" \
    -t"\"NrcScrapedMaterial\"" \
    -t"\"NrcScrapedReport\"" \
    -t"\"NrcScraperTarget\"" \
    -t"\"NrcTag\"" \
    -t"\"NrcUnits\"" \
    -t"\"PA_DrillingPermit\"" \
    -t"\"PA_Spud\"" \
    -t"\"PA_Violation\"" \
    -t"\"PublishedFeedItems\"" \
    -t"\"region\"" \
    -t"\"RSSEmailSubscription\"" \
    -t"\"RssFeed\"" \
    -t"\"RssFeedItem\"" \
    -t"\"WV_DrillingPermit\"" \
    -t"\"EXPORT_FracFocusReport\"" \
    -t"\"EXPORT_FracFocusChemical\"" \
    -t"\"EXPORT_FracFocusCombined\"" \
    -t"\"23051_Incidents\"" \
    -t"\"FT_NRC_Incident_Reports\"" \
    -t"\"NrcReleaseIncidnets\"" \
    skytruth | grep -v "CREATE TRIGGER feedentry_insert"

