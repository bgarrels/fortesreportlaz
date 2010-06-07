{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit rlibfpc; 

interface

uses
    RLXLSFilter, RLAbout, RLBarcode, RLConsts, RLDesign, RLDraftFilter, 
  RLFeedBack, RLFilters, RLFindDialog, RLHTMLFilter, RLMetaFile, RLMetaVCL, 
  RLParser, RLPDFFilter, RLPreview, RLPrintDialog, RLPrinters, RLReg, 
  RLReport, RLRichFilter, RLRichText, RLSaveDialog, RLSpoolFilter, RLTypes, 
  RLUtils, LazarusPackageIntf;

implementation

procedure Register; 
begin
  RegisterUnit('RLReg', @RLReg.Register); 
end; 

initialization
  RegisterPackage('RLibFPC', @Register); 
end.
