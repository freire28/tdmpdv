unit uCaracteristica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, xcadastro, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonCustomizationForm,
  dxRibbonSkins, cxImage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  cxImageList, dxBarExtItems, dxBar, cxBarEditItem, cxClasses,
  dxLayoutContainer, dxLayoutControl, dxRibbon, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup,
  cxGridInplaceEditForm;

type
  TfrmCaracteristicas = class(TxfrmCadastros)
    fdqDadosID_CARACTERISTICA: TFDAutoIncField;
    fdqDadosDESCRICAO: TStringField;
    fdqDadosTIPO_DADOS: TStringField;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid1DBTableView1ID_CARACTERISTICA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_DADOS: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    procedure fdqDadosBeforeOpen(DataSet: TDataSet);
    procedure xbotaoPesquisaClick(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaracteristicas: TfrmCaracteristicas;

implementation

{$R *.dfm}

procedure TfrmCaracteristicas.dxBarLargeButton7Click(Sender: TObject);
begin
  inherited;
  xDescricaoPesquisa.Text;
end;

procedure TfrmCaracteristicas.fdqDadosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  fdqDados.Params.ParamByName('DESCRICAO').Value := '-1';
end;

procedure TfrmCaracteristicas.xbotaoPesquisaClick(Sender: TObject);
begin
  inherited;
  if xDescricaoPesquisa.Text <> ''  then
  begin
    ShoWMessage('Entro na pesquisa'+xDescricaoPesquisa.Text );
    fdqDados.Close;
    fdqDados.Params.ParamByName('descricao').value := xDescricaoPesquisa.Text;
    fdqDados.SQL.SaveToFile('C:\temp\sql.txt');
    fdqDados.Open();
  end;

end;

end.
