unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore,  cxClasses, dxLayoutContainer, dxLayoutControl,
  cxNavigator, cxDBNavigator, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxCheckBox, cxGridBandedTableView, cxLabel, cxDBLabel, Vcl.ExtCtrls,
  dxDateRanges, dxScrollbarAnnotations, cxGroupBox, cxRadioGroup;

type
  TfrmClientes = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBNClientes: TcxDBNavigator;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    fdqClientes: TFDQuery;
    dsCliente: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTECPF: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTECelular: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTECelular2: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    PopupMenu1: TPopupMenu;
    AlterarEndereo1: TMenuItem;
    dxLGEdicao: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    fdqClientesNOME: TStringField;
    fdqClientesDATA_CADASTRO: TSQLTimeStampField;
    fdqClientesTIPO_PESSOAL: TStringField;
    fdqClientesCPFCNPJ: TStringField;
    fdqClientesDATA_NASCIMENTO: TSQLTimeStampField;
    fdqClientesCELULAR1: TStringField;
    fdqClientesCELULAR2: TStringField;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutItem2: TdxLayoutItem;
    fdqClientesID_CLIENTE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure fdqClientesBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxDBTECPFExit(Sender: TObject);
    procedure cxDBTECelularKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTECelular2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfrmClientes.cxDBTECPFExit(Sender: TObject);
begin
 // cxDBTECPF.Text := FormataCPF(cxDBTECPF.Text);
end;

procedure TfrmClientes.cxDBTECelular2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8]) then begin
    if not (Key in ['0'..'9']) then Key := #0;
    if (Length(cxDBTECelular2.Text) = 1) then begin
      if cxDBTECelular2.Text[1] = '(' then cxDBTECelular2.Text := '' else begin
        cxDBTECelular2.Text := '('+cxDBTECelular2.text;
        cxDBTECelular2.SelStart := Length(cxDBTECelular2.text);
      end;
    end;
    if Length(cxDBTECelular2.Text) = 3 then begin cxDBTECelular2.Text := cxDBTECelular2.text+') ';
      cxDBTECelular2.SelStart := Length(cxDBTECelular2.text);
    end;
    if Length(cxDBTECelular2.Text) = 9 then begin cxDBTECelular2.text := cxDBTECelular2.text+'-';
      cxDBTECelular2.SelStart := Length(cxDBTECelular2.Text);
    end;
  end;
end;

procedure TfrmClientes.cxDBTECelularKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8]) then begin
    if not (Key in ['0'..'9']) then Key := #0;
    if (Length(cxDBTECelular.Text) = 1) then begin
      if cxDBTECelular.Text[1] = '(' then cxDBTECelular.Text := '' else begin
        cxDBTECelular.Text := '('+cxDBTECelular.text;
        cxDBTECelular.SelStart := Length(cxDBTECelular.text);
      end;
    end;
    if Length(cxDBTECelular.Text) = 3 then begin cxDBTECelular.Text := cxDBTECelular.text+') ';
      cxDBTECelular.SelStart := Length(cxDBTECelular.text);
    end;
    if Length(cxDBTECelular.Text) = 9 then begin cxDBTECelular.text := cxDBTECelular.text+'-';
      cxDBTECelular.SelStart := Length(cxDBTECelular.Text);
    end;
  end;
end;

procedure TfrmClientes.cxGrid1DBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if fdqClientes.State in [ dsEdit, dsInsert ]then
    fdqClientes.Post;

end;

procedure TfrmClientes.fdqClientesBeforePost(DataSet: TDataSet);
begin
  fdqClientes.FieldByName('DATA_CADASTRO').AsDateTime := dmPrincipal.retornaDataServidor;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  fdqClientes.Open();
end;

end.
