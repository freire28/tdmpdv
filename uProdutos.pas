unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, xcadastro, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonCustomizationForm,
  dxRibbonSkins, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  dxLayoutContainer, cxImage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, cxImageList, dxBar,
  dxBarExtItems, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, dxRibbon, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxDBEdit, cxGroupBox, cxRadioGroup, cxCheckBox, Vcl.DBCtrls, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit,
  REST.Types, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, dxCore;

type
  TfrmProdutos = class(TxfrmCadastros)
    fdqDadosDESCRICAO: TStringField;
    fdqDadosTIPO_PRODUTO: TIntegerField;
    fdqDadosGENERO_PRODUTO: TIntegerField;
    fdqDadosPRECO_CUSTO: TFMTBCDField;
    fdqDadosPREÇO_VENDA: TFMTBCDField;
    fdqDadosATIVO: TWideStringField;
    fdqDadosIPI: TFMTBCDField;
    fdqDadosICMS: TFMTBCDField;
    fdqDadosICMSST: TFMTBCDField;
    fdqDadosPRECO_MINIMO_VENDA: TWideStringField;
    fdqDadosESTOQUE_ATUAL: TFMTBCDField;
    fdqDadosESTOQUE_RISCO: TFMTBCDField;
    fdqDadosCODIGO_BARRAS_EAN: TFMTBCDField;
    fdqDadosNCM: TWideStringField;
    fdqDadosKIT: TIntegerField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutItem4: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    rstclntBuscaPedidos: TRESTClient;
    rstrqstPedidos: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    dxLayoutGroupPreco: TdxLayoutGroup;
    dxLayoutGroupEstoque: TdxLayoutGroup;
    dxLayoutGroupImpostos: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses udmPrincipal;

end.
