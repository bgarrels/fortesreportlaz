unit RLReg;

{$ifdef FPC}
{$MODE Delphi}
{$endif}

interface

uses
  Classes, RLDesign,
{$ifdef FPC}
  PropEdits, ComponentEditors, LCLType, LResources,
{$else}
{$ifdef DELPHI5}
  DsgnIntF, 
{$else}
  DesignIntF,
{$endif}
{$endif}
  RLReport, RLDraftFilter, RLRichFilter, RLHTMLFilter, RLPDFFilter, RLParser, 
  RLPreview, RLMetaFile, RLBarcode, RLRichText, RLPreviewForm, RLXLSFilter;

procedure Register;

implementation

{$R 'RLReport.dcr'}

procedure Register;
begin
  // componentes
  RegisterComponents('Fortes Report', [TRLReport, 
                                      TRLBand, 
                                      TRLDetailGrid, 
                                      TRLGroup, 
                                      TRLSubDetail, 
                                      TRLLabel, 
                                      TRLAngleLabel, 
                                      TRLDBText, 
                                      TRLMemo, 
                                      TRLDBMemo, 
                                      TRLRichText, 
                                      TRLDBRichText, 
                                      TRLImage, 
                                      TRLDBImage, 
                                      TRLSystemInfo, 
                                      TRLDraw, 
                                      TRLPanel, 
                                      TRLDBResult, 
                                      TRLBarcode, 
                                      TRLDBBarcode, 
                                      TRLPreview, 
                                      TRLExpressionParser, 
                                      TRLDraftFilter, 
                                      TRLRichFilter, 
                                      TRLHTMLFilter, 
                                      TRLPDFFilter, 
                                      TRLXLSFilter, 
                                      TRLPreviewSetup]);
  // editores de componentes
  RegisterComponentEditor(TRLReport, TRLReportDesigner);
  // editores de propriedades
  RegisterPropertyEditor(TypeInfo(TRLDataFieldProperty), nil, 'DataField', TRLDataFieldEditor);
  RegisterPropertyEditor(TypeInfo(TRLDataFieldsProperty), TRLCustomGroup, 'DataFields', TRLDataFieldsEditor);
end;

{$IFDEF FPC}
initialization
  {$I rlibfpc.lrs}
{$ENDIF}

 end.

