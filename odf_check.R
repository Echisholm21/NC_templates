####check ODF metadata before exporting to NC####

#' Check ODF metadata
#' 
#' Check that an ODF object has all the metadata required to build a complete netCDF file
#'
#' @param obj an odf object (oce::read.odf())
#' @param print TRUE or FALSE, TRUE will cause errors to be displayed at command
#'   line, FALSE will sink errors into text document
#'
#' @return will print any issues with metadata to command line, if nothing
#'   prints then all metadata is intact
#' @export
#'
#' @examples
odf_check <- function(obj, print = TRUE){
  if (print == FALSE){
  name <- gsub(obj[['filename']], pattern = ".ODF", replacement = "")
  sink(file = paste0(name, '_metadata_check.txt'))
  }
  
  if (is.null(obj[['longitude']])){
    print('Missing Longitude Value!')
  }
  if (is.na(obj[['longitude']])){
    print('Missing Longitude Value!')
  }
  if (is.null(obj[['latitude']])){
    print('Missing Latitude Value!')
  }
  if (is.na(obj[['latitude']])){
    print('Missing Latitude Value!')
  }
  if (is.null(obj[['type']])){
    print('Missing type value!')
  }
  if (is.na(obj[['type']])){
    print('Missing type value!')
  }
  if (is.null(obj[['model']])){
    print('Missing model value!')
  }
  if (is.na(obj[['model']])){
    print('Missing model value!')
  }
  if (is.null(obj[['samplingInterval']])){
    print('Missing SamplingInterval value!')
  }
  if (is.na(obj[['samplingInterval']])){
    print('Missing SamplingInterval value!')
  }
  if (is.null(obj[['countryInstituteCode']])){
    print('Missing CountryInstituteCode value!')
  }
  if (obj[['countryInstituteCode']] == 0){
    print('Missing CountryInstituteCode value!')
  }
  if (is.na(obj[['countryInstituteCode']])){
    print('Missing CountryInstituteCode value!')
  }
  
  if(is.null(obj[['cruiseNumber']])){
    print('Missing cruiseNumber value!')
  }
  if(is.na(obj[['cruiseNumber']])){
    print('Missing cruiseNumber value!')
  }
  if (is.null(obj[['station']])){
    print('Missing station value!')
  }
  if (is.na(obj[['station']])){
    print('Missing station value!')
  }
  if (is.null(obj[['serialNumber']])){
    print('Missing serialNumber value!')
  }
  if (is.na(obj[['serialNumber']])){
    print('Missing serialNumber value!')
  }
  if (is.null(obj[['cruise']])){
    print('Missing cruise value')
  }
  if (is.na(obj[['cruise']])){
    print('Missing cruise value')
  }
  if (is.null(obj[['sounding']])){
    print('Missing sounding value!')
  }
  if (is.na(obj[['sounding']])){
    print('Missing sounding value!')
  }
  if (is.null(obj[['scientist']])){
    print('Missing scientist value!')
  }
  if (is.na(obj[['scientist']])){
    print('Missing scientist value!')
  }
  if (is.null(obj[['waterDepth']])){
    print('Missing waterDepth value!')
  }
  if (is.na(obj[['waterDepth']])){
    print('Missing waterDepth value!')
  }
  if (is.null(obj[['depthMin']])){
    print('Missing depthMin value')
  }
  if (is.na(obj[['depthMin']])){
    print('Missing depthMin value')
  }
  if (is.null(obj[['depthMax']])){
    print('Missing depthMax value')
  }
  if (is.na(obj[['depthMax']])){
    print('Missing depthMax value')
  }
  if (is.null(obj[['institute']])){
    print('Missing institute value')
  }else{
    if (length(grep(obj[['institute']], pattern = 'DFO')) == 0){
      print(paste("institute value is '", obj[['institute']], "' should be 'DFO BIO'"))
    }
  }
  
  if(print == FALSE){
  sink(NULL)
  }
  
}