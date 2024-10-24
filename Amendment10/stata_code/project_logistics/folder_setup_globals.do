/* Set up global macros to point to folders */

version 15.1

#delimit ;


/*One of these
global user minyang; 
global user minyangWin; 
*/


/*minyangWin is setup to connect to oracle yet */
if strmatch("$user","minyangWin"){;
global my_projdir "J:\\Amendment10";
};


global my_codedir "${my_projdir}/stata_code";
global extract_process "${my_codedir}/data_extraction_processing";
global extraction_code "${extract_process}/extraction";
global processing_code "${extract_process}/processing";
global analysis_code "${my_codedir}/analysis";
global R_code "${my_projdir}/R_code";


/* setup data folder */
global my_datadir "${my_projdir}/data_folder";
global data_raw "${my_datadir}/raw";
global memberids ${data_raw}/memberids;

global data_internal "${my_datadir}/internal";
global data_external"${my_datadir}/external";

global data_main"${my_datadir}/main";

global data_intermediate "${my_datadir}/intermediate";

global RFA_dataset  "C:/Users/Min-Yang.Lee/Documents/READ-SSB-Lee-RFAdataset/data_folder/final/affiliates_2024_06_01.dta";

/* setup results folders */
global intermediate_results "${my_projdir}/intermediate_results";
global my_results "${my_projdir}/results";


/* setup images folders */

global my_images "${my_projdir}/images";
global exploratory "${my_images}/exploratory";



/* setup tables */

global my_tables "${my_projdir}/tables";




/*set the date field */
local date: display %td_CCYY_NN_DD date(c(current_date), "DMY");
global today_date_string = subinstr(trim("`date'"), " " , "_", .);
global vintage_string $today_date_string;

